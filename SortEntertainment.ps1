$path = "C:\Users\simrenk\Documents\PowerShellActivity_2021\Entertainment" #update this to the location of your PowerShellActivity\Entertainment folder
$LogFile = "C:\Users\simrenk\Documents\PowerShellActivity_2021\Settings\Output.log" #update this to the location of your Output.log file

function commasort($path)
{
    $LogMessage = "SortEntertainment script log"
    $LogMessage >> $LogFile

    foreach($childItem in (Get-ChildItem $path)){
            # replace , with \
            $replace = $childItem  -replace(",","\")
            
            #extracting file name with split at last \
            $NewFile = ($replace -split '\\')[-1]
            
            # new folder locations
            $Path2 = $replace.Substring(0, $replace.lastIndexOf('\'))
           
            # created a new path folder location
            $NewPath = $path + '\'+$Path2

            # created new directory folders
            New-Item -Path $NewPath -ItemType "directory"
            # moving files to new folders
            Move-Item  -path $path\$childItem -Destination $NewPath\$NewFile
            
            #consol output
            $NewPath + "\" + $NewFile
            #Log
            $NewPath + "\" + $NewFile | Out-File $LogFile -Append
     
            }
        }


commasort($path)
