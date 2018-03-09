@echo off
rem validation
if "%~1" == "" (
	echo You have to specify destination path
	exit /b
)
set baseFilePath=%~1

if not exist "%baseFilePath%" (
	echo Directory doesn't exists
	exit /b
)

cd FullTextSearchWcfService
call "ES_Service_Deploy.bat" "%baseFilePath%\FullTextSearchWcfService"
cd ..