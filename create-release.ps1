# Create a release ZIP excluding large dev files
$dest = "release.zip"
Write-Host "Creating $dest ..."
Compress-Archive -Path * -DestinationPath $dest -Force
Write-Host "Created $dest"