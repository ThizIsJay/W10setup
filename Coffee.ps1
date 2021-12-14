# Kijken of scoop geinstalleerd is 
$Folder = '~/scoop'
if (Test-Path -Path $Folder) {
	clear
} else {
		Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh'))
}

# Game selectie scherm
Write-Output "1) Minecraft"
Write-Output "2) Rocket League"
$myGame = Read-Host "Kies een game "
Switch ($myGame)
{
	1 { scoop install git sudo dark innounp aria2 wget ; scoop bucket add games ; scoop install multimc }
	2 { scoop install git sudo dark innounp aria2 wget ; scoop bucket add games extras; scoop install legendary \
	    legendary auth --delete; legendary auth; legendary install 'Rocket League' -y ; Start-Sleep -s 10 }
}
