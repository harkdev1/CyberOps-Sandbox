# Get-HelpdeskSystemInfo.ps1
# Collect basic Windows system information for helpdesk troubleshooting.

$ErrorActionPreference = "Continue"

Write-Host "`n=== Helpdesk System Information ===" -ForegroundColor Cyan

Write-Host "`n--- Computer ---" -ForegroundColor Yellow
$computer = Get-ComputerInfo |
    Select-Object CsName, WindowsProductName, WindowsVersion, OsBuildNumber
$computer | Format-List

Write-Host "`n--- Network Configuration ---" -ForegroundColor Yellow
$network = Get-NetIPConfiguration |
    Select-Object InterfaceAlias,
        @{Name="IPv4Address"; Expression={($_.IPv4Address | ForEach-Object IPAddress) -join ", "}},
        @{Name="IPv4Gateway"; Expression={($_.IPv4DefaultGateway | ForEach-Object NextHop) -join ", "}},
        @{Name="DNS"; Expression={($_.DNSServer.ServerAddresses) -join ", "}}

if ($network) {
    $network | Format-List
} else {
    Write-Host "No network configuration returned." -ForegroundColor Red
}

Write-Host "`n--- Recent System Events ---" -ForegroundColor Yellow
$events = Get-WinEvent -FilterHashtable @{
    LogName = "System"
} -MaxEvents 5 -ErrorAction SilentlyContinue |
    Select-Object TimeCreated, Id, LevelDisplayName, ProviderName

if ($events) {
    $events | Format-Table -AutoSize -Wrap
} else {
    Write-Host "No System events returned. Check permissions and the System event log." -ForegroundColor Red
}

Write-Host "`nCollection complete." -ForegroundColor Green