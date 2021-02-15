function Test-Ports {

    Param(
        [String]$server = "127.0.0.1",
        [Parameter(Mandatory)][Int32] $port,
        [ValidateSet("TCP", "UDP")][String] $portType = "TCP"
    )

    .\PortQry.exe -n $server -e $port -p $portType
}

function Write-PortTest {
    Param(
        [String]$server = "127.0.0.1",
        [Parameter(Mandatory)][Int32] $port,
        [ValidateSet("TCP", "UDP")][String] $portType = "TCP"

    )

    $message = Out-String -InputObject (Test-Ports -server $server -port $port -portType $portType)
    $message = $message -replace "`n", " " -replace "`r", " "

    if ($message.Contains("LISTENING")) {
        Write-Host $message -ForegroundColor Green
    }
    else {
        Write-Host $message -ForegroundColor Red 
    }
}

Export-ModuleMember -Function Test-Ports
Export-ModuleMember -Function Write-PortTest