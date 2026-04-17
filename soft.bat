@echo off
:: 管理者権限をチェック
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo 管理者権限で再実行しています...
    powershell start-process "%~f0" -verb runas
    exit /b
)

echo 画面比率を1920x1200にリセット中...
:: IDの末尾を * にして確実に削除
pnputil /remove-device /class Display /force
echo 完了！
