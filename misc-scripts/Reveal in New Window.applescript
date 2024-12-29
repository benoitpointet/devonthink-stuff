tell application id "DNtp"
	set thisItem to content record
	set theParent to first parent of thisItem	
	set newWindow to open window for record theParent
end tell
