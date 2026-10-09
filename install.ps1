# Install Discord design skills for Cursor (IDE + local Agent API).
param(
  [ValidateSet("user", "project")]
  [string]$Mode = "user"
)

$Root = Split-Path -Parent $MyInvocation.MyCommand.Path

function Copy-Skills([string]$Dest) {
  New-Item -ItemType Directory -Force -Path $Dest | Out-Null
  foreach ($name in @("discord-pack-design", "discord-server-design")) {
    $target = Join-Path $Dest $name
    if (Test-Path $target) { Remove-Item $target -Recurse -Force }
    Copy-Item (Join-Path $Root "skills\$name") $target -Recurse
  }
  Write-Host "Installed skills → $Dest"
}

function Copy-Rule([string]$Dest) {
  New-Item -ItemType Directory -Force -Path $Dest | Out-Null
  Copy-Item (Join-Path $Root ".cursor\rules\discord-design.mdc") (Join-Path $Dest "discord-design.mdc") -Force
  Write-Host "Installed rule  → $Dest\discord-design.mdc"
}

if ($Mode -eq "user") {
  Copy-Skills (Join-Path $HOME ".cursor\skills")
  Copy-Skills (Join-Path $HOME ".agents\skills")
  Copy-Rule (Join-Path $HOME ".cursor\rules")
} else {
  Copy-Skills (Join-Path (Get-Location) ".cursor\skills")
  Copy-Skills (Join-Path (Get-Location) ".agents\skills")
  Copy-Rule (Join-Path (Get-Location) ".cursor\rules")
  Copy-Item (Join-Path $Root "AGENTS.md") (Join-Path (Get-Location) "AGENTS.md") -Force
  Write-Host "Copied AGENTS.md → $(Join-Path (Get-Location) 'AGENTS.md')"
}

Write-Host "Done. Restart Cursor, or start an SDK agent with local.cwd on a folder that contains .cursor/skills."
