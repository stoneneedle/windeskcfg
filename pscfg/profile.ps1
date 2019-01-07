# Standard profile for James

# Place here ($PsHome): C:\Windows\System32\WindowsPowerShell\v1.0

# Console customization options
$Shell = $Host.UI.RawUI
$size = $Shell.WindowSize
$size.width=90
$size.height=30
$Shell.WindowSize = $size
$size = $Shell.BufferSize
$size.width=90
$size.height=5000
$Shell.BufferSize = $size
$Shell.WindowTitle="jimbo"

$Shell.BackgroundColor = "Black"
$Shell.ForegroundColor = "White"

Clear-Host

# Aliases
nal gpc Get-Process
nal subl sublime_text

# Set to my dir
cd c:\Users\James

# Console message
echo "Hi James. You're so awesome. Welcome to your session.`n"