-- Downloads GoogleBooks Metadata based on GoogleBook ID, or proposes a match with ISBN or record name
-- Based on a script to download DOI metadata by Kai Müller and Christian Grüenengerg; adapted to GoogleBooks API
-- Notes:
-- The script uses a numbers of custom metadata fields in Devonthink : ISBN/ISSN (is?n, identifier), Title (title, single-line text), Subtitle (subtitle, single-line text), Publication Year (publication-year, integer), Google Book ID (gbid, identifier), Authors (authors, multiline text). You can let it create them by running it successfully once and then refine their human-readable description.


use script "Dialog Toolkit Plus" version "1.1.2"

-- handler when run on selection
on run
	tell application id "DNtp"
		wrapperScript((selection of think window 1) as list) of me
	end tell
end run

-- handler when called by smart rule
on performSmartRule(theRecords)
	wrapperScript(theRecords as list) of me
end performSmartRule

on wrapperScript(theRecords)
	tell application id "DNtp"
		show progress indicator "Downloading book metadata …" steps (length of theRecords) + 1
		repeat with theRecord in theRecords
			step progress indicator (name of theRecord) as text
			mainScript(theRecord) of me
		end repeat
		hide progress indicator
	end tell
end wrapperScript

on mainScript(theRecord)
	tell application id "DNtp"
		set theName to name of theRecord
		set parsedName to my findAndReplaceInText(theName, "-", " ")
		step progress indicator parsedName
		
		set customMetaData to custom meta data of theRecord
		
		-- first check for Google Book to query …
		set gbid to ""
		try
			set gbid to mdgbid of customMetaData
		end try
		if gbid is not "" then
			set the queryURL to "https://www.googleapis.com/books/v1/volumes/" & gbid
			set the json_gbid_result to download JSON from queryURL
			set the json_result to {|items|:[json_gbid_result], totalItems:1}
		else -- if no gbid, then go for isbn …
			set isbn to ""
			set queryString to ""
			try
				set isbn to |mdis?n| of customMetaData
				set queryString to "isbn:" & isbn
			end try
			
			-- … else use record name as querystring
			if isbn is "" then
				set queryString to parsedName
			end if
			
			set the queryURL to "https://www.googleapis.com/books/v1/volumes?q=" & queryString
			set the json_result to download JSON from queryURL
		end if
		
		-- proposes the list of matches and lets choose the right match
		set matches to {}
		set counter to 0
		if ((totalItems of json_result) as integer) is greater than 0 then
			repeat with json_record in |items| of json_result
				set entry to volumeInfo of json_record
				try
					set descAuth to get item 1 of authors of entry
				on error
					set descAuth to "N/A"
				end try
				try
					set descYear to characters 1 through 4 of publishedDate of entry
				on error
					set descYear to "N/A"
				end try
				
				set desc to (counter as string) & ". " & (title of entry) & " - " & descAuth & " - " & descYear
				set counter to (counter + 1)
				set end of matches to desc
			end repeat
			set accViewWidth to 600
			set theTop to 0
			set {theButtons, minWidth} to create buttons {"Cancel", "OK"} default button 2 given «class btns»:2
			if minWidth > accViewWidth then set accViewWidth to minWidth -- make sure buttons fit
			set {BookChooser, popupLabel, theTop} to create labeled popup matches left inset 0 bottom (theTop + 8) popup width 500 max width 700 label text "Job is for:" popup left 0
			set {boldLabel, theTop} to create label ("Match record :" & return & "'" & (parsedName) & "'") bottom theTop + 20 max width accViewWidth control size large size aligns center aligned with bold type
			set allControls to {BookChooser, boldLabel}
			set {buttonName, controlsResults} to display enhanced window "Match record to Google Books entry" acc view width accViewWidth acc view height theTop acc view controls allControls buttons theButtons with align cancel button
			
			if buttonName is "OK" then
				
				set selectedMatch to ((get character 1 of item 1 of controlsResults) as integer) + 1
				
				set json_record to item selectedMatch of |items| of json_result
				
				set URL of theRecord to selfLink of json_record
				
				set theGBID to "-"
				try
					set theGBID to |id| of json_record
				end try
				add custom meta data theGBID for "gbid" to theRecord
				
				set json_record to volumeInfo of json_record
				
				set theTitle to ""
				try
					set theTitle to title of json_record
					add custom meta data theTitle for "title" to theRecord
				end try
				
				set theSubtitle to ""
				try
					set theSubtitle to subtitle of json_record
					add custom meta data theSubtitle for "subtitle" to theRecord
				end try
				
				set thePubYear to ""
				try
					set thePubYear to word 1 of publishedDate of json_record
					add custom meta data thePubYear for "publication-year" to theRecord
				end try
				
				set theIsbn13 to ""
				try
					repeat with i in industryIdentifiers of json_record
						if |type| of i is "ISBN_13" then
							set theIsbn13 to identifier of i
						end if
					end repeat
					add custom meta data theIsbn13 for "is?n" to theRecord
				end try
				
				set the publisher to ""
				try
					set the publisher to publisher of json_record
					add custom meta data publisher for "publisher" to theRecord
				end try
				
				set the authorsList to ""
				set authors to ""
				try
					set the authors to authors of json_record
					set cnt to count of authors
					
					set theTags to (get tags of theRecord)
					repeat with author in authors
						set total to count of author
						set family to word -1 of author
						set |given| to characters 1 through (total - (count of family)) of author
						set authorTag to family & ", " & |given|
						set authorsList to authorsList & " " & author & return -- return ensures that DEVONthink automatically defines this field as text and not as a string
						set theNewTag to (authorTag)
						set end of theTags to theNewTag
						-- todo fix issue with tag aliases not taken
					end repeat
					
					set the tags of theRecord to theTags
					add custom meta data authorsList for "authors" to theRecord
				end try
				
				set theRecord's name to theTitle & " - " & theSubtitle & " - " & (item 1 of authors) & " - " & thePubYear
			end if
			
		end if
	end tell
end mainScript

-- substitution fct
on findAndReplaceInText(theText, theSearchString, theReplacementString)
	set AppleScript's text item delimiters to theSearchString
	set theTextItems to every text item of theText
	set AppleScript's text item delimiters to theReplacementString
	set theText to theTextItems as string
	set AppleScript's text item delimiters to ""
	return theText
end findAndReplaceInText
