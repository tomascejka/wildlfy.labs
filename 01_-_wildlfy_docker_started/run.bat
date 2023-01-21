@echo off

SET appName=cdi-event-getting-started
SET imgName=tocecz/%appName%

call docker run -it --rm --name %appName% -p 8080:8080 %imgName%