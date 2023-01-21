@echo off

SET appName=wildfly-docker-started
SET imgName=tocecz/%appName%

call docker build -t %imgName% .