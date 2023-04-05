@echo off

SET appName=wildfly-dockerfile-ubuntu
SET imgName=tocecz/%appName%

call docker build -t %imgName% .