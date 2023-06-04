if (!(Get-Process whkd -ErrorAction SilentlyContinue))
{
    Start-Process whkd -WindowStyle hidden
}

# Send the ALT key whenever changing focus to force focus changes
komorebic alt-focus-hack enable
# Default to cloaking windows when switching workspaces (not hiding)
komorebic window-hiding-behaviour cloak
# Set cross-monitor move behaviour to insert instead of swap
komorebic cross-monitor-move-behaviour insert
# Enable hot reloading of changes to this file
#komorebic watch-configuration enable

# Configure the invisible border dimensions
komorebic invisible-borders 0 0 0 0

# Window borders options
#komorebic active-window-border-colour 66 165 245 --window-kind single
#komorebic active-window-border-colour 256 165 66 --window-kind stack
#komorebic active-window-border-colour 255 51 153 --window-kind monocle
#komorebic active-window-border-offset 0
#komorebic active-window-border-width 10
#komorebic active-window-border disable

# Modules
. $HOME/.config/komorebi/app_rules.ps1
. $HOME/.config/komorebi/workspaces.ps1

# Start with configuration loaded
komorebic complete-configuration
