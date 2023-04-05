@echo off

call _var.bat

SET WORKDIR=%cd%

cd app
call build.bat

cd %WORKDIR%
docker build --build-arg WILDFLY_VERSION=%WILDFLY_VERSION% -f Dockerfile -t %imgName% . 