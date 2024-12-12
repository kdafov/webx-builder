@echo off

:: Remove all existing tsconfig files
for %%f in (tsconfig*.json) do (
    if exist %%f (
        del %%f >nul 2>&1
    )
)

:: Create a new tsconfig.json file
(
echo {
echo   "compilerOptions": {
echo     "target": "es5",
echo     "lib": [
echo       "dom",
echo       "dom.iterable",
echo       "esnext"
echo     ],
echo     "allowJs": true,
echo     "skipLibCheck": true,
echo     "esModuleInterop": true,
echo     "allowSyntheticDefaultImports": true,
echo     "strictBindCallApply": true,
echo     "strictFunctionTypes": true,
echo     "strictNullChecks": true,
echo     "strictPropertyInitialization": true,
echo     "noImplicitAny": true,
echo     "noImplicitThis": true,
echo     "useUnknownInCatchVariables": true,
echo     "forceConsistentCasingInFileNames": true,
echo     "noFallthroughCasesInSwitch": true,
echo     "module": "esnext",
echo     "moduleResolution": "node",
echo     "resolveJsonModule": true,
echo     "isolatedModules": true,
echo     "jsx": "react-jsx",
echo     "allowImportingTsExtensions": true,
echo     "noEmit": true
echo   },
echo   "include": [
echo     "src"
echo   ]
echo }
) > tsconfig.json

timeout /t 5 >nul