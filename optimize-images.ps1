<#
PowerShell script para optimizar imágenes usando ImageMagick (magick)
Crea versiones comprimidas en `images-optimized` conservando subcarpetas.
Requiere ImageMagick (magick) instalado y en PATH.
#>

$folders = @("images","images2","images3","images4")
$outRoot = "images-optimized"

if(-not (Get-Command magick -ErrorAction SilentlyContinue)){
    Write-Host "ImageMagick 'magick' no está disponible en PATH. Instala ImageMagick e inténtalo de nuevo." -ForegroundColor Yellow
    exit 1
}

if(-not (Test-Path $outRoot)) { New-Item -ItemType Directory -Path $outRoot | Out-Null }

foreach($f in $folders){
    if(-not (Test-Path $f)) { continue }
    $target = Join-Path $outRoot $f
    if(-not (Test-Path $target)) { New-Item -ItemType Directory -Path $target | Out-Null }

    Get-ChildItem -Path $f -File -Include *.jpg,*.jpeg,*.png,*.webp -Recurse | ForEach-Object {
        $src = $_.FullName
        $rel = $_.FullName.Substring((Get-Location).Path.Length).TrimStart('\')
        $outPath = Join-Path $target $_.Name
        # Resize to max width 1200 (conserva aspecto) y calidad 85
        Write-Host "Optimizing: $($src) -> $($outPath)"
        magick convert "${src}" -strip -resize 1200x -quality 85 "${outPath}"
    }
}

Write-Host "Optimización completada. Salida: $outRoot" -ForegroundColor Green
