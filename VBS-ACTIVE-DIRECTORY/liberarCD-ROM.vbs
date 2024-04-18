'--------------------------------------------------
' Script de Liberacao de CD-ROMs
' Rafael Rodrigo Silveira v1.1
'--------------------------------------------------
set oShell = CreateObject("WScript.Shell")
oShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\Cdrom\Start", "1", "REG_DWORD"