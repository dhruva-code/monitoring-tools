@echo off
set SERVER=127.0.0.1:27
set USER=gmail
set PW=password
set FROMNAME=from_name
set TO=recepient address
set CC=cc address (if required)
set SUBJECT="Alert"
set BODY="Body of the mail"
blat -server %SERVER% -f %FROMNAME% -u %USER% -pw %PW% -to %TO% -cc %CC% -subject %SUBJECT% -body %BODY%
exit
