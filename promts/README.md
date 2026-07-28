# Prompts

Personal collection of reusable prompts for Grok CLI and other AI coding agents.

## Structure

```bash
prompts/
├── automation/     # Git, CI, repo maintenance, repetitive tasks
├── coding/         # Code analysis, refactoring, explanations
└── ...
```

## Usage

```bash
# Example
grok -p "$(cat prompts/automation/git-commit-new-files.md)"
```

Or open the file and paste the content into an interactive grok session.
Conventions

One prompt per file
Clear filename that describes the task
Markdown format
Keep prompts focused and self-contained