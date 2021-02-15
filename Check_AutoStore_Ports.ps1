#Requires -PSEdition Core
#Requires -Version 6.1

$ErrorActionPreference = Stop

Clear-Host

Write-Host "---------------------------------------------------------------"
Write-Host "This script checks Port Connectivity on an AutoStore Server   -"
Write-Host "Please run this script on the AutoStore server.               -"
Write-Host "---------------------------------------------------------------"

Start-Job -Name "8085" -ScriptBlock { Test-Connection -ComputerName 127.0.0.1 -TcpPort 8085 } | Out-Null
Start-Job -Name "3242" -ScriptBlock { Test-Connection -ComputerName 127.0.0.1 -TcpPort 3242 } | Out-Null
Start-Job -Name "3281" -ScriptBlock { Test-Connection -ComputerName 127.0.0.1 -TcpPort 3281 } | Out-Null
Start-Job -Name "25" -ScriptBlock { Test-Connection -ComputerName 127.0.0.1 -TCPPort 25 } | Out-Null
Start-Job -Name "3290" -ScriptBlock { Test-Connection -ComputerName 127.0.0.1 -TCPPort 3290 } | Out-Null

$p8085 = Receive-Job -Name "8085" -wait
$p3242 = Receive-Job -Name "3242" -wait
$p3281 = Receive-Job -Name "3281" -wait
$p0025 = Receive-Job -Name "25" -wait
$p3290 = Receive-Job -Name "3290" -wait


Write-Host "Port 8085: " $p8085
Write-Host "Port 3242: " $p3242
Write-Host "Port 3281: " $p3281
Write-Host "Port   25: " $p0025
Write-Host "Port 3290: " $p3290