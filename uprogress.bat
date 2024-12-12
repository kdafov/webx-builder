@echo off

:: Function to display progress
:display_progress
cls
set /a completedBar=%step% * 2
set /a remainingBar=(%totalSteps% - %step%) * 2
set progressBar=

:: Enable delayed expansion for dynamic building of progress bar
setlocal enabledelayedexpansion

:: Add completed portion (#)
for /l %%i in (1, 1, %completedBar%) do set progressBar=!progressBar!#

:: Add remaining portion (-)
for /l %%i in (1, 1, %remainingBar%) do set progressBar=!progressBar!-

endlocal & set progressBar=%progressBar%

:: Calculate percentage
set /a percentage=(%step% * 100) / %totalSteps%

:: Display progress
echo.
echo [== React WebX Project Builder ==]
echo.
echo.
echo Progress: [%progressBar%] %percentage%%% (%step%/%totalSteps%)
echo.
echo Current Step: %~1
echo.
goto :EOF