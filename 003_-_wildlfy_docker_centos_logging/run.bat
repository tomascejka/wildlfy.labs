@echo off

call _var.bat

REM
REM Ve windows musi prepsat cestu na zpetne lomitka, aka linux filepath 
REM @see https://forums.docker.com/t/docker-compose-creating-volume-from-windows-to-linux/90483/5
REM
SET logDir=/C/docker-volumes-data/labs/wildfly_docker_centos_logging/log
REM SET logDir=/c/docker-volumes/wildfly_logging
SET logCmd=-v %logDir%:/opt/jboss/wildfly/standalone/log

SET /P opt="Do you run as deamon? y/n: "
IF [%opt%] EQU [n] (
	REM zavola ze console je zaroven pohledem do logu
	call docker run -it --rm --name %appName% -p %portOUT%:%portIN% %logCmd% %imgName%
) ELSE (
	REM zavola ze se spusti deamon na pozadi a vypise se containerId	
	call docker run -d --rm --name %appName% -p %portOUT%:%portIN% %logCmd% %imgName%	
)