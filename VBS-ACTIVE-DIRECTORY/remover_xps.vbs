'--------------------------------------------------
' Script de Remocao de XPS
' Rafael Rodrigo Silveira v1.1
'--------------------------------------------------
strComputer = "." 
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\CIMV2") 
Set colItems = objWMIService.ExecQuery( _
    "SELECT * FROM Win32_Printer",,48) 
For Each objItem in colItems 
    If objItem.Caption = "Microsoft XPS Document Writer" Then
       objItem.Delete_
    End If
Next
Set objWMIService = Nothing
Set colItems = Nothing