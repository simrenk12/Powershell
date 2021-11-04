$path = "C:\Users\simrenk\Documents\PowerShellActivity_2021" #update this to the location of your PowerShellActivity folder
$LogFile = "C:\Users\simrenk\Documents\PowerShellActivity_2021\Settings\Output.log" #update this to the location of your Output.log file

function removefolders($path){
    # Get each item under the current directory recursively
    foreach($childItem in (Get-ChildItem $path -Recurse))
    {
	    # if it's a folder AND does not have child items of its own
	    if( ($childItem.PSIsContainer) -and (!(Get-ChildItem -Recurse -Path $childItem.FullName)))
	    {
		    # Delete it
		    Remove-Item $childItem.FullName -Confirm:$false 
            
            
            # Log
            $LogMessage = "ClearClutter script log"
            $LogMessage >> $LogFile
            $childItem.FullName | Out-File $LogFile -Append
	    }
    }
}


removefolders($path)
