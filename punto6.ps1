Clear-Host

function Show-Menu {
	Write-Host " == MENU == "
	Write-Host "1. Limpiar y mostrar Hello World from Shell."
	Write-Host "2. Numero de lineas en el archivo C:\Windows\System32\drivers\etc\hosts."
	Write-Host "3. Buscar una palabra en un archivo."
	Write-Host "4. Nombre y descripcion de los usuarios en un archivo .txt."
	Write-Host "5. Permisos en el directorio seleccionado."
	Write-Host "6. SALIR"
}

while ($true) {
    Show-Menu
    $opcion = Read-Host 
    switch ($opcion) {
        1 {	
		.\punto1.ps1 
	}
	2 {
		.\punto2.ps1 
	}
	3 {
		$palabra = Read-Host "Palabra: "
		$archivo = Read-Host "Archivo: "
		.\punto3.ps1 "$palabra" "$archivo" 
	}
	4 {
		.\punto4.ps1
		Get-Content "usuariosDescripcion.txt"
        5 {
		.\punto5.ps1         
	}
        6 {
		Write-Host "Saliendo"
		exit
        }
        default {
		Write-Host "Opcion no valida."
        }
    }

}
