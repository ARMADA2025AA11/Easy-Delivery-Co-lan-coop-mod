param(
    [string]$Configuration = "Release"
)

$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$pkgRoot = Join-Path $PSScriptRoot "package"
$modDir = Join-Path $pkgRoot "BepInEx\plugins\EasyDeliveryCoLanCoop"
$outZip = Join-Path $root "releases\Thunderstore-EasyDeliveryCoLanCoop-v0.2.19.zip"
$dllPath = Join-Path $root "bin\$Configuration\netstandard2.1\EasyDeliveryCoLanCoop.dll"

if (-not (Test-Path $dllPath)) {
    dotnet build "$root\EasyDeliveryCoLanCoop.csproj" -c $Configuration | Out-Host
}

if (-not (Test-Path $dllPath)) {
    throw "Build output not found: $dllPath"
}

if (Test-Path $pkgRoot) {
    Remove-Item $pkgRoot -Recurse -Force
}

New-Item -ItemType Directory -Path $modDir -Force | Out-Null
Copy-Item $dllPath (Join-Path $modDir "EasyDeliveryCoLanCoop.dll") -Force
Copy-Item (Join-Path $PSScriptRoot "manifest.json") (Join-Path $pkgRoot "manifest.json") -Force
Copy-Item (Join-Path $PSScriptRoot "README.md") (Join-Path $pkgRoot "README.md") -Force
Copy-Item (Join-Path $PSScriptRoot "icon.png") (Join-Path $pkgRoot "icon.png") -Force

$releaseDir = Join-Path $root "releases"
New-Item -ItemType Directory -Path $releaseDir -Force | Out-Null
if (Test-Path $outZip) {
    Remove-Item $outZip -Force
}

Compress-Archive -Path (Join-Path $pkgRoot "*") -DestinationPath $outZip -Force
Write-Host "Thunderstore package created: $outZip"
