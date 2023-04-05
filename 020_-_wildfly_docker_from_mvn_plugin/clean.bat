@echo off

call _var.bat

call mvn clean
call docker rm -f  %appName%
call docker rmi -f %imgName%