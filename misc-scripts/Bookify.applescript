use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

-- when calling on selection / single file
on run
	tell application id "DNtp"
		-- TODO make it also work from a "document window"
		process((selection of think window 1) as list) of me
	end tell
end run

-- when called by smart rule
on performSmartRule(theRecords)
	process(theRecords as list) of me
end performSmartRule

on process(theRecords)
	tell application id "DNtp"
		repeat with theRecord in theRecords
			add custom meta data "book-ebook" for "type" to theRecord
			set theGroup to create record with {name:(get name of theRecord), type:group} in current group
			set exclude from see also of theGroup to false
			set exclude from classification of theGroup to false
			set exclude from tagging of theGroup to true
			add custom meta data "book" for "type" to theGroup
			move record theRecord to theGroup
			set selection of think window 1 to {theGroup}
		end repeat
	end tell
end process
