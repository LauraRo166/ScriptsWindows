$eventLogs = Get-WinEvent -LogName Security | Where-Object {
    $_.Id -eq 4625 # Event ID 4625: An account failed to log on
}

$failedAttempts = 0

foreach ($event in $eventLogs) {
    $message = $event.Message

    if ($message -match "root" -or $message -match "Administrator") {
        $failedAttempts++
        Write-Host "Intento fallido al usuario root/Administrador el: $($event.TimeCreated)"
    }
}

Write-Host "`nEl número de intentos de acceso ilegales a root es: $failedAttempts"
