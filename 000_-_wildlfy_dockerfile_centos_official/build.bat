@echo off

SET appName=wildfly-dockerfile-official
SET imgName=tocecz/%appName%

call docker build -t %imgName% .