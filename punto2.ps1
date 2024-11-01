Clear-Host
$num = (Get-Content 'C:\Windows\System32\drivers\etc\hosts').Length
Write-Host "El número de líneas del archivo C:\Windows\System32\drivers\etc\hosts es: $num"