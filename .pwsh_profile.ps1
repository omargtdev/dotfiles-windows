function GoHome { Set-Location -Path "$HOME" }

function Reload-Env {
    # Reloading powershell Env, e.g with new installations of programs
    $Env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + 
    		[System.Environment]::GetEnvironmentVariable("Path","User")
}

function Start-Sudo {
    Start-Process powershell -Verb RunAs     
}

function Get-LocationPath {
    (Get-Location).Path
}

function Get-CommandPath([string]$command) {
    $path = Get-Command $command -ErrorAction SilentlyContinue
    if(!$path){ return }

    Write-Output (($path).Source -eq "" ? $path : ($path).Source)
}

function Get-ChildItemSorted() {
    param(
        [Parameter(Mandatory=$false)][string]$PlainOptions,
        [Parameter(Mandatory=$false)][int32]$ChildNumber
    )

    $command = "Get-ChildItem"
    if($PlainOptions) { $command += " " + $PlainOptions }
    $command += " | Sort-Object LastWriteTime -Descending "

    if($ChildNumber -gt 0){
        $command += "| Select-Object -First $ChildNumber"
    }

    Invoke-Expression $command
}

# Komorebi
function Komorebi-Start { komorebic start -a }
function Komorebi-End {
    if(Get-Process -Name komorebi -ErrorAction SilentlyContinue) { Stop-Process -Name komorebi }
    if(Get-Process -Name whkd -ErrorAction SilentlyContinue) { Stop-Process -Name whkd }
}
function Komorebi-Restart {
    if(Get-Process -Name komorebi -ErrorAction SilentlyContinue) { Stop-Process -Name komorebi }
    if(Get-Process -Name whkd -ErrorAction SilentlyContinue) { Stop-Process -Name whkd }
    komorebic start -a
}

# Aliases
Set-Alias whereis Get-CommandPath 
Set-Alias v nvim
Set-Alias pwdd Get-LocationPath
Set-Alias e explorer.exe
Set-Alias nt notepad.exe
Set-Alias touch New-Item
Set-Alias lss Get-ChildItemSorted

# Variables
$Env:NVIM_CONFIG = "$HOME/AppData/Local/nvim/"
$Env:CODE_CONFIG = "$HOME/AppData/Roaming/Code/User/"

$Env:KOMOREBI_CONFIG_HOME = "$HOME\.config\komorebi"
$Env:dotfiles = "git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
