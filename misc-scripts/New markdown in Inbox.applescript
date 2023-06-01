on run
	tell application id "DNtp"
		set theRecord to create record with {type:markdown} in incoming group of inbox
		-- add custom meta data "my-notes" for "type" to theRecord
		open window for record theRecord
	end tell
end run
