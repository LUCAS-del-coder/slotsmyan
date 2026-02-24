# 推送到 GitHub: https://github.com/LUCAS-del-coder/slotsmyan.git
# 請在「有 index.html 和 package.json 的資料夾」內執行此腳本（PowerShell）

$ErrorActionPreference = "Stop"
Set-Location $PSScriptRoot

Write-Host "=== 推送到 GitHub ===" -ForegroundColor Cyan

if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "錯誤：找不到 git。請先安裝 Git: https://git-scm.com/" -ForegroundColor Red
    exit 1
}

# 若尚未初始化
if (-not (Test-Path .git)) {
    git init
    git branch -M main
}

git add .
git status

$msg = "Slots Myan - slotsmyan.com template"
git commit -m $msg 2>$null
if ($LASTEXITCODE -ne 0) {
    # 可能沒有變更，或已有 commit
    git diff --cached --quiet
    if ($LASTEXITCODE -ne 0) { git commit -m $msg }
}

$remote = "https://github.com/LUCAS-del-coder/slotsmyan.git"
if (-not (git remote get-url origin 2>$null)) {
    git remote add origin $remote
    Write-Host "已設定 remote: $remote" -ForegroundColor Green
} else {
    git remote set-url origin $remote
}

Write-Host "正在推送到 main..." -ForegroundColor Yellow
git push -u origin main

Write-Host "`n完成！請到 https://github.com/LUCAS-del-coder/slotsmyan 查看。" -ForegroundColor Green
