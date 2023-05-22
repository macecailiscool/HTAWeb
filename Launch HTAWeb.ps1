$verbose_info = @(
    "Setting up Internet Explorer runtime...",
    "Loading up HTA code...",
    "Exiting PowerShell loader script..."
)

for ($i = 0; $i -lt $verbose_info.Length; $i++) {
    Write-Host $verbose_info[$i]
}

$hta_file = "htaweb.hta"

Write-Host "Launching HTA file..."

Start-Process -FilePath $hta_file -WindowStyle Hidden

if ($LASTEXITCODE -ne 0) {
    Write-Host "Error launching HTA file."
}
