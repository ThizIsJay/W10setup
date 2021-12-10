taskkill /f /im explorer.exe
taskkill /f /im iexplore.exe

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

SetExecutionPolicy RemoteSigned -scope CurrentUser
iwr -useb get.scoop.sh | iex


scoop install git sudo neofetch neovim wget
scoop bucket add extras
scoop install spotify
sudo choco install firefox qutebrowser discord microsoft-teams steam-client vlc itunes epicgameslauncher blitz.gg -y

mkdir ~/Applicaties
cd ~/Applicaties
wget https://github.com/ThizIsJay/W10setup/raw/stable/OfficeSetup.exe
wget https://eactest1.cachefly.net/Protected/expiretime=1639166957/db0dc081680e00e9c5fc8958c0d0a86b/shared/publisher/vmware/VMware-workstation-full-16.0.0-16894299.exe

echo "Te installeren EXE's bevinden in ~/Applicaties klik een knop om er na toe te gaan"
userinit
explorer .
