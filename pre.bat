@echo off

:: Display menu and prompt for option
echo ^|=========================^|
echo ^| Select a project type:  ^|
echo ^| ======================= ^|
echo ^| 1. JSX (not implemented)^|
echo ^| 2. TSX                  ^|
echo ^|=========================^|
echo.
set /p projectType="Enter your choice (1 or 2): "
echo.

:: Validate user input
if "%projectType%"=="1" (
    set template=react
) else if "%projectType%"=="2" (
    set template=react-ts
) else (
    echo Invalid choice! Please run the script again and enter 1 or 2.
    pause
    exit /b
)

:: Ask for project name
:askProjectName
set /p projectName="Enter project name: "
echo.
if "%projectName%"=="" (
    echo Project name cannot be empty. Please try again.
    goto askProjectName
)
if "%projectName:~0,1%"==" " (
    echo Project name cannot start with a space. Please try again.
    goto askProjectName
)
if "%projectName%"=="NUL" (
    echo Project name cannot be "NUL". Please try again.
    goto askProjectName
)

:: Prettier extension
set /p prettier="Do you want to include the Prettier configuration? (Y/N): "
if /I "%prettier%"=="Y" (
    set prettier=Y
) else (
    set prettier=N
)

:: VSCode config for extensions
set /p vscodeConfig="Do you want to include a .vscode configuration? (Y/N): "
if /I "%vscodeConfig%"=="Y" (
    set vscodeConfig=Y
) else (
    set vscodeConfig=N
)

:: Tailwind
set /p tailwind="Do you want to include Tailwind CSS setup? (Y/N): "
if /I "%tailwind%"=="Y" (
    set tailwind=Y
) else (
    set tailwind=N
)

:: Dockerfile
set /p dockerFile="Do you want to include a Dockerfile? (Y/N): "
if /I "%dockerFile%"=="Y" (
    set dockerFile=Y
) else (
    set dockerFile=N
)
