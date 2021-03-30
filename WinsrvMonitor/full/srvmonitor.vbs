strComputer = "."
strService = "service name"
Set objService = GetObject("WinNT://" & strComputer & "/" & strService & ",Service")
Do
	while objService.Status = 1
	
            	Set shell = CreateObject("WScript.Shell")
	    	shell.CurrentDirectory = "C:\WinsrvMonitor\full\"
       	    	shell.Run "mail.bat"
	    	Wscript.sleep 1000*60*10
		Set objService = GetObject("WinNT://" & strComputer & "/" & strService & ",Service")	
			if objService.status = 4 then
				Set shell = CreateObject("WScript.Shell")	
	   			shell.CurrentDirectory = "C:\WinsrvMonitor\full\"
       	    			shell.Run "mail2.bat"
			end if
	wend
Wscript.sleep 1000*60*1
loop
	              