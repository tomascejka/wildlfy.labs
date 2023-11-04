# wildfly read env variable
Wildfly application within docker image (using base os Alpine) and read enviromental variables.

## Build
Run ```build.bat``` script. Build docker image from given Dockerfile.

## Run
Execute ```run.bat``` script. Find/run build docker image. Using simple jax-rs application in order to demonstration that wildfly/debug works, see ```/app/app.war``` artifact.

## Test
Execute ```test.bat``` script or call in ```curl -v http://localhost:8080/app/resources/message``` and rest message write to output LIST OF ENV VARIABLES (target).

## Sources
+ https://www.baeldung.com/java-system-get-property-vs-system-getenv
+ https://vsupalov.com/docker-arg-env-variable-guide/
+ https://emmer.dev/blog/bash-environment-variable-defaults/