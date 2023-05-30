$serviceName = 'spooler'

Start-Service -Name $serviceName

Get-Service -Name $serviceName | Stop-Service
$serviceName | Start-Service

$services = New-Object -TypeName System.Collections.ArrayList
$services.AddRange(@('spooler', 'w32time'))

$services | Get-Service | Start-Service
$services | Get-Service | ForEach-Object{Write-Output "Service : $($_.displayName) is currently $($_.status)"}
