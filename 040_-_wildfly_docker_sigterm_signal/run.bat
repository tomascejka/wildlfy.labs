@echo off

call _var.bat

call docker run -it --rm --name %appName% -p %portOUT%:%portIN% %imgName%