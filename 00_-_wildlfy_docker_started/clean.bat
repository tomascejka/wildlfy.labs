@echo off

SET appName=wildfly-docker-started
SET imgName=tocecz/%appName%

call docker stop %appName%
call docker rm -f %appName%
call docker rmi -f %imgName%