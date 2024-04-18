'--------------------------------------------------
' Script de Bloqueio de Pendrive
' Rafael Rodrigo Silveira v1.1
'--------------------------------------------------
set oShell = CreateObject("WScript.Shell")
' Bloqueia
oShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR\Start", "4", "REG_DWORD"
' Libera
' oShell.RegWrite "HKLM\SYSTEM\CurrentControlSet\Services\USBSTOR\Start", "3", "REG_DWORD"