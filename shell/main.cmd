@powershell -NoProfile -ExecutionPolicy Bypass -File "%systemdrive%\vagrant\shell\choco.ps1"

%systemdrive%\ProgramData\Chocolatey\bin\choco.exe install -y chef-client
