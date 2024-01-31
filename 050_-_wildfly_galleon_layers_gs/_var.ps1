#
# Precte .env file (je ve stejnem adresari, jako tento script) 
# a nasetuje promenne do ENV operacniho systemu.
#
# @see https://stackoverflow.com/questions/72236557/how-do-i-read-a-env-file-from-a-ps1-script
# @see https://beyondlocalhost.tech/read-env-variables-with-powershell-from-env-files/
# 
Get-Content .\.env | ForEach-Object {
    $name, $value = $_.split('=')
    Write-Information "$name=$value"
    Set-Content env:\$name $value
    #Write-Output "Writing $name to environment variable with $value."
}

if($args[0] -eq 1) {
    Write-Host -----------------------------------------
    Write-Host   appName=${Env:APP_NAME}
    Write-Host   imgName=${Env:IMG_NAME}
    Write-Host   netName=${Env:NET_NAME}
    Write-Host -----------------------------------------  
}