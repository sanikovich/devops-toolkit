# check-grok.ps1

<#
.SYNOPSIS
    Checks if the 'grok' command is available.

.DESCRIPTION
    Verifies that the Grok CLI is installed and accessible in the current session.
    Exits with an error if the command is not found.

.EXAMPLE
    . .\check-grok.ps1
#>

if (-not (Get-Command grok -ErrorAction SilentlyContinue)) {
    Write-Error "Command 'grok' not found. Please install Grok CLI first."
    exit 1
}