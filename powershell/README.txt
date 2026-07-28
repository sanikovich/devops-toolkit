# Directory Description

## powershell/

PowerShell automation environment.

Contains commands, reusable functions, modules, and scripts used for Windows administration and daily automation.

---

## powershell/Commands/

Personal PowerShell command-line tools.

These scripts are designed to be executed directly from the terminal.

Examples:

```powershell
ffmin.ps1
backup.ps1
server-info.ps1
docker-clean.ps1
```

Usage example:

```powershell
ffmin "video.mp4"
```

Commands are loaded into the PowerShell environment through the PowerShell Profile.

## powershell/Scripts/

Complete automation scenarios.

Scripts usually perform multiple actions and automate a specific workflow.

Examples:
```powershell
Setup-New-PC.ps1
Install-Applications.ps1
Deploy-Server.ps1
Backup-Environment.ps1
```

Scripts can use functions and modules from this repository.

## powershell/Modules/

Reusable PowerShell modules.

Modules contain structured PowerShell code that can be imported and reused.

Example:

```powershell
Modules/
└── DevOpsToolkit/
    ├── DevOpsToolkit.psd1
    ├── DevOpsToolkit.psm1
    └── Public/
        ├── Get-SystemInfo.ps1
        └── Test-Port.ps1
```

Usage:

```powershell
Import-Module DevOpsToolkit

Get-SystemInfo
```

## powershell/Functions/

Small reusable PowerShell functions.

Functions contain common logic shared by scripts and commands.

Examples:

```powershell
Get-FreeDiskSpace.ps1
Write-Log.ps1
Test-NetworkConnection.ps1
```

## powershell/Profile/

PowerShell startup configuration.

Contains scripts loaded automatically when PowerShell starts.

Used for:

importing modules
registering commands
setting environment variables
creating aliases
configuring the development environment

Example:

```powershell
Profile/
└── DevOpsToolkit.Profile.ps1
```


## PowerShell Profile Integration

The DevOps Toolkit can be automatically loaded when PowerShell starts.

### Find PowerShell Profile location

Run:
```powershell
$PROFILE
```

Example output:
```powershell
C:\Users\Username\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
```

## Edit PowerShell Profile

Open the profile:
```powershell
notepad $PROFILE
```

Add:
```powershell
$DevOpsToolkit = "$HOME\Projects\devops-toolkit\powershell"

# Add custom commands
$env:Path += ";$DevOpsToolkit\Commands"

# Load PowerShell profile extensions
Get-ChildItem "$DevOpsToolkit\Profile\*.ps1" |
    ForEach-Object {
        . $_.FullName
    }

# Import modules
$ModulesPath = "$DevOpsToolkit\Modules"

if (Test-Path $ModulesPath) {
    $env:PSModulePath += ";$ModulesPath"
}
```

Restart PowerShell.

Now commands become available globally:
```powershell
ffmin video.mp4
backup
server-info
```

