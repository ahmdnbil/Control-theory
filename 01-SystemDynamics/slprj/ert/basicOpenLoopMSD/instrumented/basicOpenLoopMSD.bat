
set MATLAB=D:\New folder (2)\MATLAB

cd .

if "%1"=="" ("D:\NEWFOL~2\MATLAB\bin\win64\gmake"  -f basicOpenLoopMSD.mk all) else ("D:\NEWFOL~2\MATLAB\bin\win64\gmake"  -f basicOpenLoopMSD.mk %1)
@if errorlevel 1 goto error_exit

exit /B 0

:error_exit
echo The make command returned an error of %errorlevel%
exit /B 1