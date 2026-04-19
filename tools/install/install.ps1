# odin_master Windows bootstrap.
#
# Usage:
#   pwsh tools/install/install.ps1            # full install (Odin, OLS, codelldb, Ollama, models)
#   pwsh tools/install/install.ps1 -Lite      # skip Ollama models + codelldb (CI-friendly)
#
# Idempotent: each step probes for the tool and skips if present.

param(
    [switch]$Lite
)

$ErrorActionPreference = "Stop"
$ODIN_VERSION = (Get-Content (Join-Path $PSScriptRoot "..\..\.odin-version") -Raw).Trim()
$ODIN_HOME    = Join-Path $env:USERPROFILE "odin\dist"
$SRC_HOME     = Join-Path $env:USERPROFILE "src"
$OLS_PIN      = "ad1d935"   # last commit verified against dev-2026-04

function Have($cmd) { $null -ne (Get-Command $cmd -ErrorAction SilentlyContinue) }

function Ensure-Path($dir) {
    $u = [Environment]::GetEnvironmentVariable("Path", "User")
    if ($u -notlike "*$dir*") {
        [Environment]::SetEnvironmentVariable("Path", "$u;$dir", "User")
        $env:Path += ";$dir"
        Write-Host "PATH += $dir"
    }
}

function Step($name, [scriptblock]$body) {
    Write-Host "== $name =="
    & $body
}

# 1. winget packages -----------------------------------------------------------
Step "winget core packages" {
    foreach ($id in @("Rustlang.Rustup", "Casey.Just", "sharkdp.fd")) {
        if (-not (winget list --id $id -n 1 2>$null | Select-String $id)) {
            winget install --id $id --accept-package-agreements --accept-source-agreements --silent
        }
    }
    if (-not $Lite -and -not (winget list --id Ollama.Ollama -n 1 2>$null | Select-String Ollama)) {
        winget install --id Ollama.Ollama --accept-package-agreements --accept-source-agreements --silent
    }
}

# 2. Odin compiler -------------------------------------------------------------
Step "Odin $ODIN_VERSION" {
    if (-not (Test-Path (Join-Path $ODIN_HOME "odin.exe"))) {
        $url = "https://github.com/odin-lang/Odin/releases/download/$ODIN_VERSION/odin-windows-amd64-$ODIN_VERSION.zip"
        $tmp = Join-Path $env:TEMP "odin.zip"
        Invoke-WebRequest -Uri $url -OutFile $tmp
        New-Item -ItemType Directory -Force -Path (Split-Path $ODIN_HOME) | Out-Null
        Expand-Archive -Force -Path $tmp -DestinationPath (Split-Path $ODIN_HOME)
    }
    [Environment]::SetEnvironmentVariable("ODIN_ROOT", $ODIN_HOME, "User")
    $env:ODIN_ROOT = $ODIN_HOME
    Ensure-Path $ODIN_HOME
}

# 3. OLS + odinfmt -------------------------------------------------------------
Step "OLS + odinfmt (pinned $OLS_PIN)" {
    $ols = Join-Path $SRC_HOME "ols"
    if (-not (Test-Path $ols)) {
        New-Item -ItemType Directory -Force -Path $SRC_HOME | Out-Null
        git clone https://github.com/DanielGavin/ols.git $ols
    }
    Push-Location $ols
    git fetch --depth 200 origin master | Out-Null
    git checkout $OLS_PIN | Out-Null
    if (-not (Test-Path "ols.exe"))      { & cmd /c "build.bat" }
    if (-not (Test-Path "odinfmt.exe"))  {
        & odin build tools/odinfmt/main.odin -file -collection:src=src -out:odinfmt.exe -o:speed
    }
    Copy-Item -Force "ols.exe","odinfmt.exe" $ODIN_HOME
    Pop-Location
}

# 4. codelldb (debug adapter) --------------------------------------------------
if (-not $Lite) {
    Step "codelldb" {
        if (-not (Test-Path (Join-Path $ODIN_HOME "codelldb.exe"))) {
            $rel = (Invoke-RestMethod "https://api.github.com/repos/vadimcn/codelldb/releases/latest").tag_name
            $url = "https://github.com/vadimcn/codelldb/releases/download/$rel/codelldb-win32-x64.vsix"
            $tmp = Join-Path $env:TEMP "codelldb.vsix"
            $ext = Join-Path $env:TEMP "codelldb-extract"
            Invoke-WebRequest -Uri $url -OutFile $tmp
            if (Test-Path $ext) { Remove-Item -Recurse -Force $ext }
            Expand-Archive -Path $tmp -DestinationPath $ext
            Copy-Item -Recurse -Force (Join-Path $ext "extension\adapter\*") $ODIN_HOME
        }
    }
}

# 5. Rust toolchain ------------------------------------------------------------
Step "Rust stable" {
    if (Have "rustup") { & rustup default stable | Out-Null }
}

# 6. Python deps ---------------------------------------------------------------
Step "Python venv + deps" {
    $repo = Resolve-Path (Join-Path $PSScriptRoot "..\..")
    Push-Location $repo
    if (-not (Test-Path ".venv")) { python -m venv .venv }
    & .\.venv\Scripts\python.exe -m pip install --upgrade pip | Out-Null
    & .\.venv\Scripts\python.exe -m pip install -e ".[dev]" -e "tools/indexer[test]"
    Pop-Location
}

# 7. Ollama models -------------------------------------------------------------
if (-not $Lite) {
    Step "Ollama models" {
        $oll = Join-Path $env:LOCALAPPDATA "Programs\Ollama\ollama.exe"
        if (Test-Path $oll) {
            Start-Process -FilePath $oll -ArgumentList "serve" -WindowStyle Hidden -ErrorAction SilentlyContinue
            Start-Sleep -Seconds 3
            & $oll pull qwen3-embedding:4b
            & $oll pull llama3.2
        } else {
            Write-Warning "Ollama not found at $oll — skipping model pulls"
        }
    }
}

# 8. Doctor --------------------------------------------------------------------
Step "doctor" {
    & .\.venv\Scripts\python.exe -m odin_master.cli doctor
}

Write-Host "`nodin_master install: done."
