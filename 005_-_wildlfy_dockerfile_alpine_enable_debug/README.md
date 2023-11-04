# Wildfly Runtime
Wildfly application within docker image (using base os Alpine) and ENABLE/DISABLE debugging. Staci pridat do dockerfile promenne/arg pro nastaveni env promenne DEBUG, DEBUG_PORT, ktere widllfy pouziva v bin/standalone.sh scriptu. A pote staci v run.bat nastavit, zda chci (true) nechci (false) zapnout debugovani.

## Build
Run ```build.bat``` script. Build docker image from given Dockerfile.

## Run
Execute ```run.bat``` script. Find/run build docker image. Using simple jax-rs application in order to demonstration that wildfly/debug works, see ```/app/app.war``` artifact.

Skript vas vyzve zda zapnout debugger, kdyz zvolite 'y' pak se v konsoli zobrazi:
```Listening for transport dt_socket at address: 8787```
v opacnem pripade, kdyz debugger nezapnete, zadna hlaska o port 8787 v logu nezobrazi.

## Test
Execute ```test.bat``` script or call in ```curl -v http://localhost:8080/app/resources/message```.

## Sources
+ https://vsupalov.com/docker-arg-env-variable-guide/
+ https://emmer.dev/blog/bash-environment-variable-defaults/