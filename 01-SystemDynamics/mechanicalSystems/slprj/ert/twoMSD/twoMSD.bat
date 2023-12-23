
call "setup_mingw.bat"

cd .

if "%1"=="" ("D:\PROGRA~2\POLYSP~2\R2021a\bin\win64\gmake"  -f twoMSD.mk all) else ("D:\PROGRA~2\POLYSP~2\R2021a\bin\win64\gmake"  -f twoMSD.mk %1)
@if errorlevel 1 goto error_exit

exit /B 0

:error_exit
echo The make command returned an error of %errorlevel%
exit /B 1