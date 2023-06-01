-- Converts a file to PDF from within Devonthink
use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

-- handler when run on selection
on run
	tell application id "DNtp"
		wrapperScript((selection of think window 1) as list) of me
	end tell
end run

-- handler when called by smart rule
on performSmartRule(theRecords)
	tell application id "DNtp"
		wrapperScript(theRecords as list) of me
	end tell
end performSmartRule

on wrapperScript(theRecords)
	tell application id "DNtp"
		show progress indicator "Convert to PDF" steps (length of theRecords) + 1
		repeat with theRecord in theRecords
			step progress indicator (name of theRecord) as text
			mainScript(theRecord) of me
		end repeat
		hide progress indicator
	end tell
end wrapperScript

on mainScript(theRecord)
	tell application id "DNtp"
		set theLink to get reference URL of theRecord
		set theAppPath to "/Applications/calibre.app/Contents/MacOS/ebook-convert"
		set theSrcPath to get quoted form of (get path of theRecord)
		set theName to (get name of theRecord)
		set theTmpPath to "~/Desktop/temp-" & (random number from 100000 to 999999) & ".pdf"
		set theConvertCmd to theAppPath & " " & theSrcPath & "  " & theTmpPath
		set theDestGroup to (item 1 of (get parents of theRecord))
		do shell script theConvertCmd
		set theConvertFile to import theTmpPath name theName to theDestGroup
		if theConvertFile is not missing value then
			set URL of theConvertFile to theLink
			do shell script "rm " & theTmpPath
			try -- very specific to me
				add custom meta data "book-ebook" for "mdtype" to theConvertFile
			end try
		end if
	end tell
end mainScript
