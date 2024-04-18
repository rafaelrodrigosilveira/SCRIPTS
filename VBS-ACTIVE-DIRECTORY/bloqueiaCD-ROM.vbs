'--------------------------------------------------
' Script de Bloqueio de CD-ROMs
' Rafael Rodrigo Silveira v1.1
'--------------------------------------------------
set oShell = CreateObject("WScript.Shell")
oShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\Cdrom\Start", "4", "REG_DWORD"