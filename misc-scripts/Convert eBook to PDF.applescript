-- Converts a file to PDF from within Devonthink
use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

on run
	tell application id "DNtp"
		generatePDF() of me
	end tell
end run

on generatePDF()
	-- todo add notifications of progress
	tell application id "DNtp"
		set theRecord to content record
		set theLink to get reference URL of theRecord
		set theAppPath to "/Applications/calibre.app/Contents/MacOS/ebook-convert"
		set theSrcPath to get quoted form of (get path of theRecord)
		set theName to (get name of theRecord)
		set theTmpPath to "~/Desktop/temp-" & (random number from 100000 to 999999) & ".pdf"
		set theConvertCmd to theAppPath & " " & theSrcPath & "  " & theTmpPath
		set theDestGroup to current group
		show progress indicator "Convert to PDF : " & theName & " …" steps 3
		step progress indicator
		do shell script theConvertCmd
		step progress indicator
		set theConvertFile to import theTmpPath name theName to theDestGroup
		if theConvertFile is not missing value then
			step progress indicator
			set URL of theConvertFile to theLink
			do shell script "rm " & theTmpPath
			try -- very specific to me
				add custom meta data "eBook" for "mdtype" to theConvertFile
			end try
			hide progress indicator
		end if
	end tell
end generatePDF
