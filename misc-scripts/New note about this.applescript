property prefix : "thoughts on :"

tell application id "DNtp"
	
	set thisItem to content record
	
	set theName to prefix & name of thisItem
	
	set theGroup to item 1 of parent of thisItem
	
	set theUrl to reference URL of thisItem
	
	set theDocument to create record with {type:markdown, name:theName, URL:theUrl, rich text:return} in theGroup
	
	try -- very specific to me
		add custom meta data "thought-observation" for "mdtype" to theDocument
	end try
	
	open window for record theDocument
	
end tell
