# Download the latest Notepad++ to the temp folder
$DownloadUrl = "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/latest/download/npp.8.3.2.Installer.exe"
Write-Host "Downloading the latest Notepad++ to the temp folder"
Invoke-WebRequest -Uri $DownloadUrl -OutFile "$env:TEMP\npp.8.3.2.Installer.exe" | Out-Null

# Install Notepad++ silently
Write-Host "Installing the latest Notepad++"
Start-Process -FilePath "$env:TEMP\npp.8.3.2.Installer.exe" -ArgumentList "/S" -Wait
