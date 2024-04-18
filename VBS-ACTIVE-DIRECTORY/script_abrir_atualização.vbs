'--------------------------------------------------
' Script de Abertura de Atualizacoes do Windows
' Rafael Rodrigo Silveira v1.1
'--------------------------------------------------
set oShell= CreateObject("Wscript.Shell")

set oEnv = oShell.Environment("PROCESS")

oEnv("SEE_MASK_NOZONECHECKS") = 1

oShell.Run "c:\ms04-038\WindowsXP-KB834707-x86-enu /quiet /passive /norestart",0,True

oEnv.Remove("SEE_MASK_NOZONECHECKS")