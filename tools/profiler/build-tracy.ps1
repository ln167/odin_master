$ErrorActionPreference = 'Stop'

$vs = & 'C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe' -latest -property installationPath
$repo = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
$tracy = (Resolve-Path (Join-Path $repo 'tools\domains\odin\odin_lib\vendor\odin-tracy')).Path
$viewer = Join-Path $tracy 'tracy'
$installed = Join-Path $viewer 'vcpkg_installed'
$glfw = Join-Path $installed 'x64-windows-static\lib\glfw3.lib'

if (-not (Test-Path $glfw)) {
	$vcpkg = Join-Path $vs 'VC\vcpkg\vcpkg.exe'
	$env:VCPKG_ROOT = $null
	& $vcpkg install "--x-manifest-root=$viewer" "--x-install-root=$installed" --triplet=x64-windows-static
	if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }
}

Copy-Item (Join-Path $installed 'x64-windows-static\lib\zs.lib') (Join-Path $installed 'x64-windows-static\lib\zlib.lib') -Force
Copy-Item (Join-Path $installed 'x64-windows-static\debug\lib\zsd.lib') (Join-Path $installed 'x64-windows-static\debug\lib\zlibd.lib') -Force

$vcvars = Join-Path $vs 'VC\Auxiliary\Build\vcvars64.bat'
$solution = Join-Path $viewer 'profiler\build\win32\Tracy.sln'
cmd /c "`"$vcvars`" && cd /d `"$tracy`" && cl -MT -O2 -DTRACY_ENABLE -c tracy\public\TracyClient.cpp -Fotracy && lib tracy.obj && msbuild `"$solution`" /m /p:Configuration=Release /p:Platform=x64 /verbosity:minimal"
if ($LASTEXITCODE -ne 0) { exit $LASTEXITCODE }

$built = Join-Path $viewer 'profiler\build\win32\x64\Release\Tracy.exe'
$output = Join-Path $repo 'Tracy.exe'
Copy-Item $built $output -Force
Write-Host "Built $output"
Write-Host 'Run: Start-Process .\Tracy.exe'
