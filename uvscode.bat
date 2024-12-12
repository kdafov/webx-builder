@echo off

:: Create .vscode folder
mkdir .vscode >nul 2>&1

:: Create extensions.json
(
echo {
echo   "recommendations": [
echo     "dbaeumer.vscode-eslint",
echo     "esbenp.prettier-vscode"
echo   ]
echo }
) > .vscode\extensions.json

:: Create settings.json
(
echo {
echo     ^"editor.codeActionsOnSave": {
echo         "source.fixAll": "explicit"
echo     },
echo     ^"editor.formatOnSave": true
echo }
) > .vscode\settings.json

timeout /t 4 >nul