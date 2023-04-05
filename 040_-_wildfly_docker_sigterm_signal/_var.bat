@echo off

SET appName=wildlfy-docker-sigterm-signal
SET imgName=tocecz/%appName%
REM list of wildlfy versions, see https://github.com/jboss-dockerfiles/wildfly#wildfly-images
SET WILDFLY_VERSION=27.0.1.Final-jdk17

SET portIN=8080
SET portOUT=8080

echo -----------------------------------
echo %appName%
echo %imgName%
echo -----------------------------------