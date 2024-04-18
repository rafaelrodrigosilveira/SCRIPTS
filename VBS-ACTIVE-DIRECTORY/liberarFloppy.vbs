'--------------------------------------------------
' Script de Liberacao de Floppy-Drivers
' Rafael Rodrigo Silveira v1.1
'--------------------------------------------------
set oShell = CreateObject("WScript.Shell")
oShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\Flpydisk\Start", "3", "REG_DWORD"