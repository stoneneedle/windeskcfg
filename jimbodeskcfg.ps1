# jimbodeskcfg.ps1 - This file is designed to set up a new computer with some basic installs
# This needs to be input manually into PowerShell to run this script
# Set-ExecutionPolicy Unrestricted

# Install chocolatey first
Set-ExecutionPolicy Bypass -Scope Process -Force; iex `
((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install instructions for chocolatey
# Apps: Adobe Reader, Chrome, VLC, NPP
choco install adobereader -y
choco install googlechrome -y
choco install vlc -y
choco install notepadplusplus.install -y
choco install sublimetext3 -y
choco install javaruntime -y
choco install sysinternals -y
choco install teamviewer -y

# I also want to use PowerShell to directly install local files, such as for
# Astrill, since the app is not nearly as common and thus not in a Chocolatey
# repo.

# Apps: Microsoft Office 2016, Astrill, Adobe PS7, Adobe Acrobat Pro, WinRAR

# Start-Process -FilePath "C:\Users\james\OneDrive\astrill-setup-win.exe" ` 
# -Verb runAs -ArgumentList "/qn"
# This command silently installs 7zip. The /qn argument works great with most MSIs
# according to a StackExchange poster, but not so much with exe files, which I
# mostly have.

# MSI Installers: 7zip, Calibre
# Start-Process -FilePath "C:\Users\james\Downloads\7z1805-x64.msi" -ArgumentList "/qn"

# C:\Users\james\OneDrive\_Work\Work Apps\TechSmith Snagit v12 2 1 Incl Keygen-F4CG\setup.exe
# This next command isn't part of PowerShell, it requires something called GPOTools, and may not work
# Install-Application -InstallerPath "C:\Users\james\OneDrive\_Work\Work Apps\TechSmith Snagit v12 2 1 Incl Keygen-F4CG\setup.exe" -InstallerParameters "/S"

# -RegistryKey HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\Notepad++ -RegistryName DisplayVersion -RegistryValue 6.7.8.2 

# $wshell = New-Object -ComObject wscript.shell;
# $wshell.AppActivate('title of the application window')
# Sleep 1
# $wshell.SendKeys('~')

# $window = Select-Window | Where-Object {$_.Title -like "Windows PowerShell" }
# Send-Keys -Keys " " -Window $window

# Rename a PowerShell window (could come in handy)
#$host.ui.RawUI.WindowTitle = "Jimbo1"