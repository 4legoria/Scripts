get-content -Path "$env:HOMEDRIVE$env:HOMEPATH\lista-servers.txt"

$listaservers = @(get-content  -Path "$env:HOMEDRIVE$env:HOMEPATH\lista-servers.txt")
#agregar en la raíz de la carpeta de usuario, un archivo txt con todos los equipos que queremos revisar que tengaa el nombre de lista-servers, también deberemos tener permisos administrativos para ejecutarlo.

foreach ($server in $listaservers)
{
	write-host "server: $server"
	Get-SmbConnection -ServerName $server | select Servername, ShareName, Dialect
}  
#esto imprimirá el servidor que está revisando, luego nos dirá la información que seleccionemos
