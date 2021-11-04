# Powershell

1.	ClearClutter
a.	This script should be used to delete folders that contain no files.
b.	Create an Output.log mentioning full paths of all deleted folders.
2.	SortEntertainment
a.	Within the ‘Entertainment’ folder there are files with comma delimited filenames. This script should parse file names and turn them into a folder as shown below.
Before:
\\PowerShellActivity\Entertainment\Game,Board,Risk.txt
After: 
\\PowerShellActivity\Entertainment\Game\Board\Risk.txt
b.	Console should output filename that were moved, include extension.
c.	Append Output.log to show full destination file path including file name and extension.
3.	UpdatePasswords
a.	Within the ‘Settings’ folder there is a text file named ‘DefinitelyNotPasswords.txt’. This file contains a list in the format of [variable=value]. Use these values to search the entire directory and replace all instances of “#{variable}” with “value”
b.	Console should output filename that was modified, include extension.
c.	Append Output.log to show full destination file path, and each variable replaced.
