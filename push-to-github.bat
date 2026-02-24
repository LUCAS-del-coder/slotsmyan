@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo === 推送到 GitHub ===
where git >nul 2>nul
if errorlevel 1 (
    echo 錯誤：找不到 git。請先安裝 Git: https://git-scm.com/
    pause
    exit /b 1
)

if not exist ".git" (
    git init
    git branch -M main
)

git add .
git commit -m "Slots Myan - slotsmyan.com template" 2>nul
if errorlevel 1 git status

git remote remove origin 2>nul
git remote add origin https://github.com/LUCAS-del-coder/slotsmyan.git
echo 正在推送到 main...
git push -u origin main

echo.
echo 完成！請到 https://github.com/LUCAS-del-coder/slotsmyan 查看。
pause
