@echo off

call _var.bat

REM If we run again mvn clean package, 
REM the wildfly-maven-plugin will provision WildFly using its feature pack. 
REM Once maven is finished, there will be a target/server directory that 
REM contains WildFly and the application deployment.
REM @see https://www.wildfly.org/news/2022/08/04/wildfly-maven-docker/
call mvn clean package

call docker build -t %imgName% .