<#
.SYNOPSIS
Compress video files using NVIDIA NVENC HEVC encoder.

.DESCRIPTION
Converts video files to a smaller MP4 format using hardware acceleration.
Optimized for Telegram and web publishing.

.PARAMETER InputFile
Path to the source video file.

.EXAMPLE
ffmin "video.mp4"

Compress video.mp4 and create a new file with "- min" suffix.

.NOTES
Requires FFmpeg with NVIDIA NVENC support.
#>

param(
    [Parameter(Mandatory=$true)]
    [string]$InputFile
)

$output = [System.IO.Path]::Combine(
    [System.IO.Path]::GetDirectoryName($InputFile),
    ([System.IO.Path]::GetFileNameWithoutExtension($InputFile) + " - min.mp4")
)

ffmpeg `
    -i "$InputFile" `
    -c:v hevc_nvenc `
    -preset p7 `
    -rc vbr `
    -tune hq `
    -multipass fullres `
    -cq 28 `
    -maxrate 1500k `
    -bufsize 3000k `
    -c:a aac `
    -b:a 96k `
    "$output"