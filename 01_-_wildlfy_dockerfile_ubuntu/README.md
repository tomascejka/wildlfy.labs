# Wildfly Runtime
Wildfly application within docker image (using base os Ubuntu).

## Build
Run ```build.bat``` script. Build docker image from given Dockerfile.

## Run
Execute ```run.bat``` script. Find/run build docker image. Using simple jax-rs application in order to demonstration that wildfly works, see ```/app/app.war``` artifact.

## Test
Execute ```test.bat``` script or call in ```curl -v http://localhost:8080/app/resources/message```.

## Sources
+ https://quay.io/repository/wildfly/wildfly
+ https://www.wildfly.org/news/2022/08/04/wildfly-maven-docker/
+ https://www.adam-bien.com/roller/abien/entry/simplest_possible_rest_endpoint