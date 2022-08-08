cd /d %~dp0
for %%f in (*.svg) do (
	echo %%~nf
	"C:\Program Files\Inkscape\bin\inkscape" "%%~nf.svg" --export-type="eps" --export-ignore-filters --export-ps-level=3
)
pause