$ubicacionOriginal = Get-Location

$nombre = $args[0]
$directorio = $args[1]

Set-Location -Path $directorio

if (Test-Path -Path $nombre -PathType Leaf) {
    Write-Host "'$nombre' es un archivo."
} elseif (Test-Path -Path $nombre -PathType Container) {
    Write-Host "'$nombre' es un subdirectorio."
} else {
    Write-Host "'$nombre' no es un archivo ni un subdirectorio en '$directorio'."
}

Set-Location -Path $ubicacionOriginal