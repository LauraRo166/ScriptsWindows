Clear-Host
$palabra = $args[0]
$archivo = $args[1]
Write-Host "La palabra '$palabra' en el archivo '$archivo':"
$resultado = Select-String -Path $archivo -Pattern $palabra
if ($resultado) {
       foreach ($linea in $resultado) {
       Write-Host "Linea $($linea.LineNumber): $($linea.Line)"
    }
} else {
    Write-Host "No se encontró la palabra en el archivo."
}
