
REM Repository: papers/done/2024gaiw/supporting_page/gaiw2024
echo Restoring: papers/done/2024gaiw/supporting_page/gaiw2024
if exist "papers\done\2024gaiw\supporting_page\gaiw2024\.git" (
    echo   Directory already exists, skipping...
) else (
    REM Create parent directory if needed
    if not exist "papers\done\2024gaiw\supporting_page" mkdir "papers\done\2024gaiw\supporting_page"
    
    REM Clone the repository
    git clone "git@github.com:yasserfarouk/gaiw2024.git" "papers\done\2024gaiw\supporting_page\gaiw2024"
    if errorlevel 1 (
        echo   Failed to clone
    ) else (
        echo   Successfully cloned
        
        REM Checkout the original branch if not already on it
        cd "papers\done\2024gaiw\supporting_page\gaiw2024"
        git checkout "main" 2>nul
        if errorlevel 1 (
            echo   Could not checkout branch: main
        ) else (
            echo   Checked out branch: main
        )
        cd ..\..
    )
)
echo.

