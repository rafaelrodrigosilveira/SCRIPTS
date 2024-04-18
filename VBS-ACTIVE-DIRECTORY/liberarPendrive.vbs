'--------------------------------------------------
' Script de Liberacao de Pendrive
' Rafael Rodrigo Silveira v1.1
'--------------------------------------------------
set oShell = CreateObject("WScript.Shell")
oShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR\Start", "3", "REG_DWORD"