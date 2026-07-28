<#
.SYNOPSIS
    Adds .gitkeep to all empty directories in the specified path.

.DESCRIPTION
    Recursively scans the given directory and creates a .gitkeep file
    in every empty folder so Git can track it.

.PARAMETER Path
    Root path to scan. Defaults to the current directory.

.EXAMPLE
    .\Add-GitKeep.ps1
    .\Add-GitKeep.ps1 -Path "C:\Users\user\Projects\devops-toolkit"
#>

param(
    [string]$Path = (Get-Location).Path
)

if (!(Test-Path $Path)) {
    Write-Error "Path not found: $Path"
    exit 1
}

$emptyDirs = Get-ChildItem -Path $Path -Directory -Recurse | Where-Object {
    @(Get-ChildItem -Path $_.FullName -Force).Count -eq 0
}

if ($emptyDirs.Count -eq 0) {
    Write-Host "No empty directories found."
    exit 0
}

foreach ($dir in $emptyDirs) {
    $gitkeep = Join-Path $dir.FullName ".gitkeep"
    New-Item -ItemType File -Path $gitkeep -Force | Out-Null
    Write-Host "Added .gitkeep → $($dir.FullName)"
}

Write-Host "`nDone. Added .gitkeep to $($emptyDirs.Count) empty folder(s)."