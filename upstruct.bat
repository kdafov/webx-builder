@echo off

:: Make additional project configurations
if exist index.html (
    del index.html >nul 2>&1
)
copy ..\_setup\index.html . >nul 2>&1

if exist public\vite.svg (
    del public\vite.svg >nul 2>&1
)
copy ..\_setup\default_image.svg public\ >nul 2>&1

if exist src\assets (
    rd /s /q src\assets >nul 2>&1
)

if exist src\App.css (
    del src\App.css >nul 2>&1
)
copy ..\_setup\App.css src\ >nul 2>&1

if exist src\App.tsx (
    del src\App.tsx >nul 2>&1
)
copy ..\_setup\App.tsx src\ >nul 2>&1

if exist src\index.css (
    del src\index.css >nul 2>&1
)
copy ..\_setup\index.css src\ >nul 2>&1

timeout /t 5 >nul