@echo off

call _var.bat

call docker rm -f %appName%
call docker rmi -f %imgName%