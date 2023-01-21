@echo off

SET appName=wildfly-dockerfile-official
SET imgName=tocecz/%appName%

call docker stop %appName%
call docker rm -f %appName%
call docker rmi -f %imgName%