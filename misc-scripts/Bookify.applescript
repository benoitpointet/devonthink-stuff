on run
	tell application id "DNtp"
		set theRecords to selected records
		set firstRecord to first item of theRecords
		set theGroup to create record with {name:(get name of firstRecord), type:group} in current group
		set exclude from see also of theGroup to false
		set exclude from classification of theGroup to false
		set exclude from tagging of theGroup to true
		add custom meta data "book" for "type" to theGroup
		move record theRecords to theGroup
	end tell
end run
