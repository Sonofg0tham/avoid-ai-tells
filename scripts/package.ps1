# Builds dist/avoid-ai-tells.skill, the package you upload to Claude.ai or Cowork.
# A .skill file is a zip with the skill folder at its root. Only SKILL.md and
# references/ go in: evals and repo docs are for the GitHub repo, not the runtime.
# Run from anywhere: powershell -File scripts/package.ps1

$ErrorActionPreference = "Stop"
$root = Split-Path -Parent $PSScriptRoot
$staging = Join-Path $env:TEMP "avoid-ai-tells-pkg\avoid-ai-tells"
$dist = Join-Path $root "dist"

if (Test-Path (Split-Path -Parent $staging)) { Remove-Item (Split-Path -Parent $staging) -Recurse -Force }
New-Item -ItemType Directory -Force $staging | Out-Null
New-Item -ItemType Directory -Force $dist | Out-Null

Copy-Item (Join-Path $root "SKILL.md") $staging
Copy-Item (Join-Path $root "references") (Join-Path $staging "references") -Recurse
Copy-Item (Join-Path $root "LICENSE") $staging

$zip = Join-Path $dist "avoid-ai-tells.zip"
if (Test-Path $zip) { Remove-Item $zip -Force }
Compress-Archive -Path $staging -DestinationPath $zip

$skill = Join-Path $dist "avoid-ai-tells.skill"
if (Test-Path $skill) { Remove-Item $skill -Force }
Copy-Item $zip $skill

Remove-Item (Split-Path -Parent $staging) -Recurse -Force
Write-Host "Built $zip and $skill"
