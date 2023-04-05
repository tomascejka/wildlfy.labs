@echo off

call _var.bat

call docker run -dit --rm --name %appName% -p %portOUT%:%portIN% %imgName%