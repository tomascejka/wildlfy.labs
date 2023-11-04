@echo off

call _var.bat

set workdir=%cd%

cd app
call mvn clean package

cd %workdir%
call docker build -t %imgName% .