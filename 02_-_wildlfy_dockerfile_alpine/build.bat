@echo off

SET appName=wildfly-dockerfile-alpine
SET imgName=tocecz/%appName%

call docker build -t %imgName% .