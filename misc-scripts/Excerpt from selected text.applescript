-- Save selected text as RTF
-- 20140818 -- original made by korm -- adjust as your wish, but please attribute copies
-- see https://discourse.devontechnologies.com/t/new-rtf-doc-from-selected-text-with-url-to-pdf/14512/1

property suffix : " (excerpt)"
property prefix : ""
property askName : false -- false : the name is generated based on item name, prefix and suffix variables; true : a name is asked for
property askGroup : false -- false : the current group of the item is used as target group (if many then Inbox); true : the sorter will be used to select target group for the excerpt
property openAfter : false -- false : creates but does not open in a new window; true : opens after creation

tell application id "DNtp"
	
	set thisItem to content record
	
	set theText to selected text of think window 1
	set theText to (return & theText) -- adding a first white line to avoid the thing with metadata 
	
	if theText is "" then
		error "Select some text"
	end if
	
	set theName to prefix & name of thisItem & suffix
	if askName then
		set theName to the text returned of (display dialog "File name" default answer theName)
	end if
	
	set thePage to ""
	if the current page of think window 1 ≠ -1 then
		set thePage to "?page=" & ((the current page of think window 1) as string)
	end if
	
	set theGroup to item 1 of parent of thisItem
	if askGroup then
		set theGroup to display group selector
	end if
	
	set theUrl to reference URL of thisItem & thePage
	set theDocument to create record with {type:markdown, name:theName, URL:theUrl, rich text:theText} in theGroup
	
	try -- very specific to me
		add custom meta data "excerpt" for "mdtype" to theDocument
	end try
	
	if openAfter then
		open window for record theDocument
	end if
	
end tell
