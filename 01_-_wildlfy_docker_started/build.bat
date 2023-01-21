@echo off

SET appName=cdi-event-getting-started
SET imgName=tocecz/%appName%

call mvn clean package
call docker build -t %imgName% .