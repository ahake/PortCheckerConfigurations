Import-Module .\Test-Ports\Test-Ports.psm1

Write-Host "---------------------------------------------------------------------------------------------------------------------------------------------------"
Write-Host "This script checks connectivity to the PaperCut MF Cloud Services"
Write-Host "`nPlease note: Use portqueryui.exe to check the usual PaperCut ports."
Write-Host "---------------------------------------------------------------------------------------------------------------------------------------------------"
Write-Host "Ports should return `"LISTENING`" or `"FILTERING"`" 
Write-Host "---------------------------------------------------------------------------------------------------------------------------------------------------"

Write-Host "`nChecking ports used for Integrated Scanning with Scan to Cloud and Cloud OCR`n"
Write-PortTest -server "scan.cloud.papercut.com" -port 443
Write-PortTest -server "ocr.cloud.papercut.com" -port 443
Write-PortTest -server "scan.au.cloud.papercut.com" -port 443
Write-PortTest -server "ocr.au.cloud.papercut.com" -port 443
Write-PortTest -server "scan.eu.cloud.papercut.com" -port 443
Write-PortTest -server "ocr.eu.cloud.papercut.com" -port 443
Write-PortTest -server "scan.us.cloud.papercut.com" -port 443
Write-PortTest -server "ocr.us.cloud.papercut.com" -port 443
Write-PortTest -server "scan.papercut.com" -port 443

Write-Host "`nChecking ports required for automatic updates for mobility print Server`n"
Write-PortTest -server "mobility-print.papercut.com" -port 443
Write-PortTest -server "mobility-print-standalone.papercut.com" -port 443
Write-PortTest -server "storage.googleapis.com/pc-mobility-print.appspot.com" -port 443

Write-Host "`nChecking ports required for Cloud Print - To register the server and notify it of incoming jobs:`n"
Write-PortTest -server "mp.cloud.papercut.com" -port 443
Write-PortTest -server "mqtt.googleapis.com" -port 8883
Write-PortTest -server "storage.googleapis.com/pc-mobility-print.appspot.com" -port 443

Write-Host "`nChecking ports required for Cloud Print - To orchestrate the Peer-to-Peer connection:`n"
Write-PortTest -server "global.stun.twilio.com" -port 3478
Write-PortTest -server "global.stun.twilio.com" -port 3478 -portType "UDP"
Write-PortTest -server "global.turn.twilio.com" -port 443
Write-PortTest -server "global.turn.twilio.com" -port 3478 -portType "UDP"

Write-Host "`nChecking ports required for Print Deploy updates`n"
Write-PortTest -server "update.print-deploy.cloud.papercut.com" -port 443

Write-Host "`nChecking ports required for a Known Host setup`n"
Write-PortTest -server "mobility-print.papercut.com" -port 443
Write-PortTest -server "mobility-print-standalone.papercut.com" -port 443
Write-PortTest -server "storage.googleapis.com/pc-mobility-print.appspot.com" -port 443