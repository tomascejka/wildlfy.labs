@echo off

SET appName=wildfly-dockerfile-alpine
SET imgName=tocecz/%appName%

REM zavola ze console je zaroven pohledem do logu
REM call docker run -it --rm --name %appName% -p 8080:8080 %imgName%

REM zavola ze se spusti deamon na pozadi a vypise se containerId
call docker run -d --rm --name %appName% -p 8080:8080 %imgName%