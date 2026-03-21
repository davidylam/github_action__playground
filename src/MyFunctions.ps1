function Say-Hello {
    param([string]$Name)
    Write-Host "Hello, $Name! This function ran successfully."
}
 
# The file can contain multiple functions.
function Get-CurrentTime {
    Write-Output "The current time is $(Get-Date)"
}