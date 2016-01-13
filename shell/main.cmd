@powershell -NoProfile -ExecutionPolicy Bypass -File "%systemdrive%\vagrant\shell\choco.ps1"

choco install -y chef-client
