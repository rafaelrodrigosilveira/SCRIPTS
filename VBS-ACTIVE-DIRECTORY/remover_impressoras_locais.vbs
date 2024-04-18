'--------------------------------------------------
' Script de Remocao de impressoras locais
' Rafael Rodrigo Silveira v1.1
'--------------------------------------------------
strComputer = "." 
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\CIMV2") 
Set colItems = objWMIService.ExecQuery( _
    "SELECT * FROM Win32_Printer",,48) 
For Each objItem in colItems 
    objItem.Delete_
Next
Set objWMIService = Nothing
Set colItems = Nothing