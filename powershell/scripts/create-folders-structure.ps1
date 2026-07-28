$root = "devops-toolkit"

$folders = @(
    ".github/workflows",
    "powershell/modules",
    "powershell/scripts",
    "linux/bash",
    "linux/alma-linux",
    "centminmod/scripts",
    "centminmod/configs",
    "docker",
    "nginx",
    "ruby",
    "terraform",
    "monitoring",
    "utils",
    "configs",
    "docs"
)

$files = @(
    "README.md",
    ".gitignore",
    ".github/workflows/validate.yml"
)

New-Item -ItemType Directory -Path $root -Force | Out-Null

# Create directories
foreach ($folder in $folders) {
    New-Item `
        -ItemType Directory `
        -Path "$root/$folder" `
        -Force | Out-Null
}

# Create files
foreach ($file in $files) {
    New-Item `
        -ItemType File `
        -Path "$root/$file" `
        -Force | Out-Null
}

Write-Host "DevOps Toolkit structure created successfully."