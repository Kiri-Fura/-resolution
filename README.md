# Resolution Tool

日本語(Japanese)

このツールは、起動時（ログイン時）にディスプレイデバイスの再スキャンを行い、解像度をリセットするためのツールです。

## ファイル構成
- `soft.bat`: 解像度リセットを実行するメインスクリプト
- `inst.bat`: `soft.bat` をタスクスケジューラに登録し、自動起動するように設定するインストーラー。

## 使い方

1. **インストール**
   - `inst.bat` を**右クリック**し、**「管理者として実行」**を選択してください。
   - 画面の指示に従い、登録が完了したことを確認します。

2. **動作**
   - 次回以降、Windowsにサインインすると自動的に `soft.bat` が実行されます。

## アンインストール方法
タスクスケジューラから登録を削除するには、コマンドプロンプト（管理者）で以下のコマンドを実行してください：
```cmd
schtasks /delete /tn "ResolutionResetTool" /f
```

## 注意事項
- このツールはデバイスマネージャーのディスプレイアダプターを操作（削除・再構成）するため、実行時に一瞬画面が点滅したり、暗くなったりする場合があります。
- 管理者権限が必要です。
- OpenGLを使っているゲーム(マイクラなど)では、ゲームが正常に動作しない場合があります。(DirectXは不明。できない場合はIssuesにて、教えてください)

## 動作環境
windows 11、windows 10で動作するコマンドを使っています。

By Nullp

English (Translated using DeepL)

This tool rescans your display devices at startup (when you log in) to reset the resolution.

## File Structure
- `soft.bat`: The main script that performs the resolution reset.
- `inst.bat`: An installer that registers `soft.bat` with the Task Scheduler and configures it to run automatically.

## Usage

1. **Installation**
   - **Right-click** `inst.bat` and select **“Run as administrator”**.
   - Follow the on-screen instructions and confirm that the registration is complete.

2. **Operation**
   - From the next time you sign in to Windows, `soft.bat` will run automatically.

## Uninstallation
To remove the entry from the Task Scheduler, run the following command in Command Prompt (Admin):
```cmd
schtasks /delete /tn “ResolutionResetTool” /f
```

## Notes
- Since this tool manipulates (deletes or reconfigures) display adapters in Device Manager, the screen may flicker or go dark briefly during execution.
- Administrator privileges are required.
- Games that use OpenGL (such as Minecraft) may not function properly. (Status for DirectX is unknown. If it doesn't work, please let us know via the Issues section.)

## System Requirements
This tool uses commands that work on Windows 11 and Windows 10.

By Nullp
