@echo off

:: Create .prettierrc.cjs file
(
echo module.exports = {
echo     printWidth: 100,
echo     singleQuote: true,
echo     semi: true,
echo     tabWidth: 4,
echo     trailingComma: "all",
echo     endOfLine: "auto"
echo };
) > .prettierrc.cjs

timeout /t 2 >nul