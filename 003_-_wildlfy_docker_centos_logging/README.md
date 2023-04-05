# Wildfly Runtime
Wildfly application within docker image (using official wildfly docker image registry) and setup logging into host volume (see Source [2] chapter 'Mounting a volume from the host').

## Build
Run ```build.bat``` script. Build docker image from given Dockerfile.

## Run
Execute ```run.bat``` script. Find/run build docker image. There is a change - where via docker command create volume (host define where volume be mount, not-portable). Using simple jax-rs application in order to demonstration that wildfly works, see ```/app/app.war``` artifact.

## Test
Execute ```test.bat``` script or call in ```curl -v http://localhost:8080/app/resources/message```.

## Sources
1. https://quay.io/repository/wildfly/wildfly
2. https://goldmann.pl/blog/2014/07/18/logging-with-the-wildfly-docker-image/