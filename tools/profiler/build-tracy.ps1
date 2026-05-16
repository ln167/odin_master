$vs = & 'C:\Program Files (x86)\Microsoft Visual Studio\Installer\vswhere.exe' -latest -property installationPath
$tracy = Join-Path $PSScriptRoot '..\domains\odin\odin_lib\vendor\odin-tracy'
cmd /c "`"$vs\VC\Auxiliary\Build\vcvars64.bat`" && cd /d `"$tracy`" && cl -MT -O2 -DTRACY_ENABLE -c tracy\public\TracyClient.cpp -Fotracy && lib tracy.obj"
