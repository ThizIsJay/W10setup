﻿Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

SetExecutionPolicy RemoteSigned -scope CurrentUser
iwr -useb get.scoop.sh | iex


scoop install git sudo neofetch neovim 
scoop bucket add extras
sudo choco install firefox qutebrowser spotify discord microsoft-teams steam-client vlc itunes epicgameslauncher blitz.gg -y
