Import-Module .\Test-Ports

$ErrorActionPreference = Stop
[String]$server = "127.0.0.1"
[String]$pcServer = ""

Clear-Host

Write-Host "---------------------------------------------------------------------------------------------------------------------------------------------------"
Write-Host "This script checks connectivity to the PaperCut MF Server from a Client"
Write-Host "To check ports from an MFD, unplug the MFD, plug the cable into your laptop, ensure that your laptop's firewall is turned off."
Write-Host "---------------------------------------------------------------------------------------------------------------------------------------------------"
Write-Host "Ports should return `"LISTENING`""
Write-Host "---------------------------------------------------------------------------------------------------------------------------------------------------"

$title = "PaperCut Server"
$message = "Is this script running on the PaperCut server?"
$yes = New-Object System.Management.Automation.Host.ChoiceDescription "&Yes", "PaperCut Server"
$no = New-Object System.Management.Automation.Host.ChoiceDescription "&No", "Client"
$options = [System.Management.Automation.Host.ChoiceDescription[]]($yes, $no)
$PaperCutServer = $host.ui.PromptForChoice($title, $message, $options, 0)

if ($PaperCutServer -eq 1) {
    Write-Host "Please enter the Hostname or IPv4 Address of the PaperCut Server: " -NoNewline
    $pcServer = Read-Host

    try {        
        $ipTest = [byte[]] $pcServer.Split('.')
    }
    catch {
        Write-Host "That does not seem to be a valid IP address."
        Exit
    }   
}

if ($pcServer -ne "") {
    $server = $pcServer
}

Write-PortTest -server $server -port 9191 
Write-PortTest -server $server -port 9192
Write-PortTest -server $server -port 9193
Write-PortTest -server $server -port 3269
Write-PortTest -server $server -port 9181
Write-PortTest -server $server -port 443