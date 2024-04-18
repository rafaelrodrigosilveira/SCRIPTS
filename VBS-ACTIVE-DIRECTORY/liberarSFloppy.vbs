'--------------------------------------------------
' Script de Liberacao de  Floppy Drive
' Rafael Rodrigo Silveira v1.1
'--------------------------------------------------
set oShell = CreateObject("WScript.Shell")
oShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\Sfloppy\Start", "3", "REG_DWORD"