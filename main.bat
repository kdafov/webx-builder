@echo off
setlocal

:: Set title
title React WebX Project Builder
echo React WebX Project Builder
echo.

:: Initialize progress variables
set step=0
set totalSteps=12

:: Call the questions module
call pre.bat

:: Start progress bar
set /a step+=1
call uprogress.bat "Initializing project"

:: Create project
set /a step+=1
call uprogress.bat "Creating project files"

call npm create vite@latest %projectName% -- --template %template% >nul 2>&1
cd %projectName%

:: Install NPM modules
set /a step+=1
call ..\uprogress.bat "Installing dependencies"

call npm install >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo npm install failed. Please check the error message.
    pause
    exit /b %ERRORLEVEL%
)

:: Create a new tsconfig.json file
set /a step+=1
call ..\uprogress.bat "Creating tsconfig.json file"
call ..\utssetup.bat

:: Create .prettierrc.cjs file
set /a step+=1
if /I "%prettier%"=="Y" (
    call ..\uprogress.bat "Creating .prettierrc.cjs file"
    call ..\uprettierrc.bat
)

:: Create vscode folder & setup
set /a step+=1
if /I "%vscodeConfig%"=="Y" (
    call ..\uprogress.bat "Creating .vscode folder & setup"
    call ..\uvscode.bat
)

:: Update the .gitignore file
set /a step+=1
call ..\uprogress.bat "Updating the .gitignore file"
call ..\ugit.bat

:: Update the README file
set /a step+=1
call ..\uprogress.bat "Updating the README file"
call ..\ureadme.bat

:: Update project structure
set /a step+=1
call ..\uprogress.bat "Updating project structure"
call ..\upstruct.bat

:: Add Tailwind CSS 
set /a step+=1
if /I "%tailwind%"=="Y" (
    call ..\uprogress.bat "Adding TailwindCSS to project"
    call ..\utailwind.bat
)

:: Add Docker file
set /a step+=1
if /I "%dockerFile%"=="Y" (
    call ..\uprogress.bat "Adding TailwindCSS to project"
    copy ..\_setup\Dockerfile Dockerfile >nul 2>&1
    copy ..\_setup\.dockerignore .dockerignore >nul 2>&1
)

:: Completion
set /a step+=1
call ..\uprogress.bat "Setup cleanup"
echo.
echo Project setup complete!
pause