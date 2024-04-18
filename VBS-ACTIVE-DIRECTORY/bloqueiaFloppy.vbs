'--------------------------------------------------
' Script de Bloqueio de Floppy-Drive
' Rafael Rodrigo Silveira v1.1
'--------------------------------------------------
set oShell = CreateObject("WScript.Shell")
' Bloqueia
oShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\Flpydisk\Start", "4", "REG_DWORD"
' Libera
' oShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\Flpydisk\Start", "3", "REG_DWORD"