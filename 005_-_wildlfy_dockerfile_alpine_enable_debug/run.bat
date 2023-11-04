@echo off

call _var.bat

SET /P dbg="Do you enable debugging? y/n: "
SET env_enable_debug=false
IF [%dbg%] EQU [y] (
	SET env_enable_debug=true
)

SET /P opt="Do you run as deamon? y/n: "
IF [%opt%] EQU [n] (
	REM zavola ze console je zaroven pohledem do logu
	call docker run -e DEBUG=%env_enable_debug% -it --rm --name %appName% -p %portOUT%:%portIN% -p 8787:8787 %imgName%
) ELSE (
	REM zavola ze se spusti deamon na pozadi a vypise se containerId	
	call docker run -e DEBUG=%env_enable_debug% -d --rm --name %appName% -p %portOUT%:%portIN% -p 8787:8787 %imgName%	
)