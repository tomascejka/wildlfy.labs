@echo off

call _var.bat

SET WORKDIR=%cd%

cd app
call clean.bat

cd %WORKDIR%
call docker rm -f %appName%
call docker rmi -f %imgName%