@echo off 
IF exist "%Appdata%\r2modmanPlus-local\NUL" (
    echo "Moving the r2 modman folder to bat file location"
    move "%Appdata%\r2modmanPlus-local" "%~dp0r2modmanPlus-local"
)

IF exist "%Appdata%\r2modmanPlus-local" (
    echo "deleting the symlink"
    rmdir "%Appdata%\r2modmanPlus-local"
)

echo "Make symlink to current folder"
mklink /D "%Appdata%\r2modmanPlus-local" "%~dp0r2modmanPlus-local"

echo "done"
pause