@echo off

:: Install required modules
call npm install tailwindcss@latest @tailwindcss/forms @tailwindcss/typography @tailwindcss/aspect-ratio @headlessui/react @heroicons/react >nul 2>&1
    
:: Initialize tailwinds config file
copy ..\_setup\tailwind.config.js tailwind.config.js >nul 2>&1

:: Change index.css configuration
copy /Y ..\_setup\tw_index.css src\index.css >nul 2>&1

:: Change App.tsx configuration
copy /Y ..\_setup\tw_App.tsx src\App.tsx >nul 2>&1

:: Update content of vite.config.ts
copy /Y ..\_setup\vite.config.ts vite.config.ts >nul 2>&1

:: Add postcss config file
copy /Y ..\_setup\postcss.config.js postcss.config.js >nul 2>&1

timeout /t 5 >nul
