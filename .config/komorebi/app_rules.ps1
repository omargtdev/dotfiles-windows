# komorebic.exe identify-border-overflow-application - Overflowing borders (full size)
# komorebic.exe identify-tray-application - Identity that exists in tray
# komorebic.exe float-rule - Always float the appliaction

########################### WINDOWS NATIVE APPS ###################################
# Calculator
komorebic.exe float-rule title "Calculator"

# Microsoft PC Manager
komorebic.exe float-rule exe "MSPCManager.exe"

# Credential Manager UI Host
# Targets the Windows popup prompting you for a PIN instead of a password on 1Password etc.
komorebic.exe float-rule exe "CredentialUIBroker.exe"

# Smart Install Maker
# Target hidden window spawned by installer
komorebic.exe float-rule class "obj_App"
# Target installer
komorebic.exe float-rule class "obj_Form"

# SystemSettings
komorebic.exe float-rule class "Shell_Dialog"

# Task Manager
komorebic.exe float-rule class "TaskManagerWindow"

# Windows Explorer
# Targets copy/move operation windows
komorebic.exe float-rule class "OperationStatusWindow"
komorebic.exe float-rule title "Control Panel"

# Windows Console (conhost.exe)
komorebic.exe manage-rule class "ConsoleWindowClass"

# Windows Installer
komorebic.exe float-rule exe "msiexec.exe"

##################################################################################

###################### OFFICE ###############################

# Microsoft Excel
komorebic.exe identify-border-overflow-application exe "EXCEL.EXE"
komorebic.exe identify-layered-application exe "EXCEL.EXE"
# Targets a hidden window spawned by Microsoft Office applications
komorebic.exe float-rule class "_WwB"

# Microsoft Outlook
komorebic.exe identify-border-overflow-application exe "OUTLOOK.EXE"
komorebic.exe identify-layered-application exe "OUTLOOK.EXE"
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "OUTLOOK.EXE"

# Microsoft PowerPoint
komorebic.exe identify-border-overflow-application exe "POWERPNT.EXE"
komorebic.exe identify-layered-application exe "POWERPNT.EXE"

# Microsoft Word
komorebic.exe identify-border-overflow-application exe "WINWORD.EXE"
komorebic.exe identify-layered-application exe "WINWORD.EXE"

# Microsoft Teams
komorebic.exe identify-border-overflow-application exe "Teams.exe"
# Target Teams pop-up notification windows
komorebic.exe float-rule title "Microsoft Teams Notification"
# Target Teams call in progress windows
komorebic.exe float-rule title "Microsoft Teams Call"

###################################################################

# ShareX (Screenshoot tool)
komorebic.exe float-rule exe "ShareX.exe"

# Bitwarden
komorebic.exe identify-tray-application exe "Bitwarden.exe"
komorebic.exe float-rule exe "Bitwarden.exe"

# Discord
komorebic.exe identify-border-overflow-application exe "Discord.exe" 
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "Discord.exe"

# Elephicon
komorebic.exe float-rule exe "Elephicon.exe"

# ElevenClock
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "ElevenClock.exe"

# Epic Games Launcher
komorebic.exe identify-border-overflow-application exe "EpicGamesLauncher.exe"
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "EpicGamesLauncher.exe"

# Google Chrome
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "chrome.exe"

# IntelliJ IDEA
komorebic.exe identify-object-name-change-application exe "idea64.exe"
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "idea64.exe"
# Targets JetBrains IDE popups and floating windows
komorebic.exe float-rule class "SunAwtDialog"

# Kleopatra
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "kleopatra.exe"

# Kotatogram (Telegram fork)
komorebic.exe identify-border-overflow-application exe "Kotatogram.exe"
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "Kotatogram.exe"

# WhatsApp
#komorebic.exe manage-rule exe "WhatsApp.exe" # let to komorebic to manage this app
komorebic.exe identify-border-overflow-application exe "WhatsApp.exe" 

# Modern Flyouts
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "ModernFlyoutsHost.exe"

# Mozilla Firefox
komorebic.exe identify-object-name-change-application exe "firefox.exe"
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "firefox.exe"
# Targets invisible windows spawned by Firefox to show tab previews in the taskbar
komorebic.exe float-rule class "MozillaTaskbarPreviewClass"

# Notion
komorebic.exe identify-border-overflow-application exe "Notion.exe"

# OBS Studio (32-bit)
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "obs32.exe"

# OBS Studio (64-bit)
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "obs64.exe"

# PowerToys
# Target color picker dialog
komorebic.exe float-rule exe "PowerToys.ColorPickerUI.exe"
# Target image resizer dialog
komorebic.exe float-rule exe "PowerToys.ImageResizer.exe"

# QtScrcpy
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "QtScrcpy.exe"

# RepoZ
komorebic.exe float-rule exe "RepoZ.exe"

# ShareX
komorebic.exe identify-border-overflow-application exe "ShareX.exe"
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "ShareX.exe"

# Spotify
komorebic.exe identify-border-overflow-application exe "Spotify.exe" 
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "Spotify.exe"

# Steam
komorebic.exe identify-border-overflow-application class "vguiPopupWindow"

# Steam Beta
komorebic.exe identify-border-overflow-application class "SDL_app"
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application class "SDL_app"

# Telegram
komorebic.exe identify-border-overflow-application exe "Telegram.exe"
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "Telegram.exe"

# TouchCursor
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "tcconfig.exe"
komorebic.exe float-rule exe "tcconfig.exe"

# TranslucentTB
komorebic.exe float-rule exe "TranslucentTB.exe"
# TranslucentTB
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "TranslucentTB.exe"

# Visual Studio
komorebic.exe identify-object-name-change-application exe "devenv.exe"

# Visual Studio Code
komorebic.exe identify-border-overflow-application exe "Code.exe"

# WinZip (32-bit)
komorebic.exe float-rule exe "winzip32.exe"

# WinZip (64-bit)
komorebic.exe float-rule exe "winzip64.exe"

# WingetUI
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "WingetUI.exe"

# WingetUI
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "wingetui.exe"

# Zoom
komorebic.exe float-rule exe "Zoom.exe"

# ueli (Run apps like PowerToys)
# If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
komorebic.exe identify-tray-application exe "ueli.exe"
komorebic.exe float-rule exe "ueli.exe"
