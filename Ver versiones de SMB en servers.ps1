get-content -Path "$env:HOMEDRIVE$env:HOMEPATH\lista-servers.txt"

$listaservers = @(get-content  -Path "$env:HOMEDRIVE$env:HOMEPATH\lista-servers.txt")

foreach ($server in $listaservers)
{
	write-host "server: $server"
	Get-SmbConnection -ServerName $server | select Servername, ShareName, Dialect
}  
 