@echo off

:: Remove existing README.md file if it exists
if exist README.md (
    del README.md >nul 2>&1
)

:: Add new README.md file
(
    echo # Project Name
    echo.
    echo Short project description.
    echo.
    echo # Section
    echo ***Content***
    echo.
) > README.md

timeout /t 2 >nul