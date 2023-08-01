cd /d %~dp0
for %%f in (*.svg) do (
	echo %%~nf
	"C:\Program Files\Inkscape\bin\inkscape" "%%~nf.svg" --export-type="pdf"
	move "%%~nf.svg" ..\svg_converted
	move "%%~nf.pdf" ..
)
pause