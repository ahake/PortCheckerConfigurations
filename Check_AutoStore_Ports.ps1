Import-Module .\Test-Ports

$ErrorActionPreference = Stop
[String]$server = "127.0.0.1"

Clear-Host

Write-Host "---------------------------------------------------------------------------------------------------------------------------------------------------"
Write-Host "This script checks Port Connectivity on an AutoStore Server"
Write-Host "Please run this script on the AutoStore server."
Write-Host "---------------------------------------------------------------------------------------------------------------------------------------------------"
Write-Host "Ports should return `"LISTENING`""
Write-Host "---------------------------------------------------------------------------------------------------------------------------------------------------"

Write-PortTest -server $server -port 8085 
Write-PortTest -server $server -port 3242
Write-PortTest -server $server -port 3281
Write-PortTest -server $server -port 25
Write-PortTest -server $server -port 3290