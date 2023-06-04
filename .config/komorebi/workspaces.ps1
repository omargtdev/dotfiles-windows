enum Layouts {
    bsp
    columns
    rows
    vertical_stack
    horizontal_stack
    ultrawide_vertical_stack
}

class Workspace {
    [string]$Name
    [Layouts]$Layout
    [string]$Description
    [Int32]$MonitorIndex
    [Int32]$WorkspacePadding = 5
    [Int32]$WorkspaceContainersPadding = 5

    Workspace([string]$name, [Layouts]$layout) 
    {
        $this.Name = $name
        $this.Layout = $layout
        $this.Description = $null 
        $this.MonitorIndex = 0
    }

    Workspace([string]$name, [Layouts]$layout, [string]$description) 
    {
        $this.Name = $name
        $this.Layout = $layout
        $this.Description = $description
        $this.MonitorIndex = 0
    }

    Workspace([string]$name, [Layouts]$layout, [string]$description, [Int32]$monitorIndex) 
    {
        $this.Name = $name
        $this.Layout = $layout
        $this.Description = $description
        $this.MonitorIndex = $monitorIndex
    }

    [string]GetLayoutName()
    {
        return $this.Layout.ToString().Replace("_", "-")
    }
}


[Workspace[]]$workspaces = [Workspace[]]::New(9)
$workspaces[0] = [Workspace]::New("I", [Layouts]::bsp, "Terminal")
$workspaces[1] = [Workspace]::New("II", [Layouts]::columns, "Browser")
$workspaces[2] = [Workspace]::New("III", [Layouts]::bsp, "Dev")
$workspaces[3] = [Workspace]::New("IV", [Layouts]::bsp, "Explorer (Manage files)")
$workspaces[4] = [Workspace]::New("V", [Layouts]::columns, "Messages (WhatsApp, Discord, Telegram, etc)")
$workspaces[5] = [Workspace]::New("VI", [Layouts]::columns, "Office")
$workspaces[6] = [Workspace]::New("VII", [Layouts]::vertical_stack, "Music")
$workspaces[7] = [Workspace]::New("VIII", [Layouts]::bsp, "Extra0", 1)
$workspaces[8] = [Workspace]::New("IX", [Layouts]::bsp, "Extra1", 1)

# You can assign specific apps to named workspaces
komorebic named-workspace-rule exe "WindowsTerminal.exe" $workspaces[0].Name

komorebic named-workspace-rule exe "brave.exe" $workspaces[1].Name
#komorebic named-workspace-rule exe "firefox.exe" $workspaces[1].Name
#komorebic named-workspace-rule exe "chrome.exe" $workspaces[1].Name
#komorebic named-workspace-rule exe "msedge.exe" $workspaces[1].Name

komorebic named-workspace-rule exe "WhatsApp.exe" $workspaces[4].Name
komorebic named-workspace-rule exe "Discord.exe" $workspaces[4].Name

#komorebic named-workspace-rule exe "EXCEL.EXE" $workspaces[5].Name
#komorebic named-workspace-rule exe "WORD.EXE" $workspaces[5].Name
#komorebic named-workspace-rule exe "POWERPNT.EXE" $workspaces[5].Name
#komorebic named-workspace-rule exe "OUTLOOK.EXE" $workspaces[5].Name

komorebic named-workspace-rule exe "Spotify.exe" $workspaces[6].Name

# Create named workspaces on monitor 0
komorebic ensure-named-workspaces 0 @($workspaces | ForEach-Object { if($_.MonitorIndex -eq 0) { $_.Name } })
# You can do the same thing for secondary monitors too
komorebic ensure-named-workspaces 1 @($workspaces | ForEach-Object { if($_.MonitorIndex -eq 1) { $_.Name } })

foreach($workspace in $workspaces){
    # Assign layouts to workspaces, possible values: bsp, columns, rows, vertical-stack, horizontal-stack, ultrawide-vertical-stack
    komorebic named-workspace-layout $workspace.Name $workspace.GetLayoutName()
    # Set the gaps around the edge of the screen for a workspace
    komorebic named-workspace-padding $workspace.Name $workspace.WorkspacePadding
    # Set the gaps between the containers for a workspace
    komorebic named-workspace-container-padding $workspace.Name $workspace.WorkspaceContainersPadding
}
