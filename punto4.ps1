Clear-Host
Get-LocalUser | Select-Object Name, Description | Format-Table -AutoSize | Out-File -FilePath usuariosDescripcion.txt"
Write-Host "Los nombres de los usuarios y sus descripciones fueron guardados en usuariosDescripcion.txt"
