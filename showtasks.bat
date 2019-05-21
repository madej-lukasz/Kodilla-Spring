call runcrud.bat
if "%ERRORLEVEL%" == "0" goto browser
echo.
echo RUNCRUD has errors - breaking work
goto fail

:browser
start http://localhost:8080/crhereud/v1/task/getTasks
if "%ERRORLEVEL%" == "0" goto end
echo.
echo Open browser error
goto fail

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.