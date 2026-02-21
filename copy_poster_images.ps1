# Copy poster/presentation images into images/ for the academic site.
# Run from repo root. Source folders are in .gitignore; ensure they exist locally before running.

$ErrorActionPreference = "Stop"
$root = $PSScriptRoot
$images = Join-Path $root "images"
if (-not (Test-Path $images)) { New-Item -ItemType Directory -Path $images -Force | Out-Null }

# Teaser images: use project-relevant figures (see plan update_site_from_poster_mds)
$pairs = @(
    @("OceanIT_Presentation_img\OceanIT_Presentation_7.png", "rootquant-teaser.png"),
    @("RootSAM_Final_Poster_img\RootSAM_Final_Poster_4.png", "rootsam-teaser.png"),
    @("SPROUTS_Poster_img\SPROUTS_Poster_0.png", "sprouts-teaser.png"),
    @("OceanIT_Presentation_img\OceanIT_Presentation_9.png", "demo-rootquant-original.png"),
    @("OceanIT_Presentation_img\OceanIT_Presentation_10.png", "demo-rootquant-finetuned.png"),
    @("SPROUTS_Poster_img\SPROUTS_Poster_6.png", "demo-sprouts-dark.png"),
    @("SPROUTS_Poster_img\SPROUTS_Poster_7.png", "demo-sprouts-enhanced.png"),
    @("RootSAM_Final_Poster_img\RootSAM_Final_Poster_4.png", "demo-rootsam-qualitative.png")
)

foreach ($p in $pairs) {
    $fullSrc = Join-Path $root $p[0]
    if (Test-Path $fullSrc) {
        Copy-Item -LiteralPath $fullSrc -Destination (Join-Path $images $p[1]) -Force
        Write-Host "Copied: $($p[0]) -> images/$($p[1])"
    } else {
        Write-Host "Skip (not found): $($p[0])"
    }
}
Write-Host "Done."
