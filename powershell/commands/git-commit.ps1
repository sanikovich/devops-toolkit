# git-commit.ps1

<#
.SYNOPSIS
    Analyze new/modified files, create a commit and push it.

.DESCRIPTION
    Runs a predefined Grok prompt that:
    - Analyzes the current git repository
    - Stages new and modified files
    - Creates a meaningful commit
    - Pushes the commit to the remote

.EXAMPLE
    .\git-commit.ps1
#>

. (Join-Path $DevOpsToolkit "scripts\check-grok.ps1")

$PromptPath = "C:\Users\SysOP\Projects\devops-toolkit\promts\automation\git-commit-new-files.md"

if (!(Test-Path $PromptPath)) {
    Write-Error "Prompt file not found: $PromptPath"
    exit 1
}

grok -p (Get-Content $PromptPath -Raw) --always-approve --output-format plain