@echo off
set "TASK_NAME=ResolutionResetTool"
set "SCRIPT_PATH=%~dp0soft.bat"

echo ========================================
echo Resolution Tool インストーラー
echo ========================================
echo.

:: 管理者権限チェック
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo [ERROR] 管理者権限が必要です。
    echo 右クリックして「管理者として実行」してください。
    pause
    exit /b
)

echo %TASK_NAME% をタスクスケジューラに登録しています...
:: ログオン時に、最上位の特権で「実行中」の状態でも強制的に上書きして登録 (/f)
:: /rl highest で管理者権限での実行を許可
schtasks /create /tn "%TASK_NAME%" /tr "\"%SCRIPT_PATH%\"" /sc onlogon /rl highest /f

echo.
if %errorlevel% equ 0 (
    echo ----------------------------------------
    echo インストールに成功しました！
    echo 次回ログイン時に自動的に実行されます。
    echo ----------------------------------------
) else (
    echo [ERROR] 登録に失敗しました。
)

pause
