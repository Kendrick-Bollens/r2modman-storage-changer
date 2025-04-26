@echo off
IF exist "%Appdata%\r2modmanPlus-local" (
    echo "Deleting the symlink"
    rmdir "%Appdata%\r2modmanPlus-local"
)

echo "Creating directory in AppData"
mkdir "%Appdata%\r2modmanPlus-local"

echo "Copying files to AppData"
:: stupid long xcopy because move was not working out because of permissions
xcopy "%~dp0r2modmanPlus-local\*" "%Appdata%\r2modmanPlus-local\" /E /I /H /Y

echo "Removing local copy"
rmdir "%~dp0r2modmanPlus-local"

echo "done"
pause
