$path = "C:\Users\simrenk\Documents\PowerShellActivity_2021" #update this to the location of your PowerShellActivity folder
$LogFile = "C:\Users\simrenk\Documents\PowerShellActivity_2021\Settings\Output.log" #update this to the location of your Output.log file

function updatepasswords($path)
{
    #log
    $LogMessage = "UpdatePasswords script log"
    $LogMessage >> $LogFile
    $path | Out-File $LogFile -Append
    

    gci -r -include *.* |
        foreach-object { $path = $_.fullname; ( get-content $path ) |     
            foreach-object { $_ -replace 'FBPass','s1x+eenCH4r!M1n@' `
             -replace 'LIPass','2short' `
             -replace 'TwitterPass','whatpassword' `
             -replace 'InstaPass','BHSInsta' `
             -replace 'TestUser','JonDoe123' }  | set-content $path }
            
              
        
}


updatepasswords($path)
