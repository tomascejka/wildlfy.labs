# wildfly docker sigterm signal
Zkousim zjistit, jak se chova widlfly v dockeru a reaguje na [docker stop](https://docs.docker.com/engine/reference/commandline/stop/) prikaz, ktery by mel vyslat [[IPC signal](https://en.wikipedia.org/wiki/Signal_(IPC)) (zde tyto:SIGTERM/SIGKILL) aplikaci, aby se korektne ukoncila.

## Build
Spustte ```build.bat``` dojde ke stazeni/zbuildovani docker-u s wildlfy serverem (je mozne prepsat versi, viz. ```_var.bat```, promenna ```WILDFLY_VERSION```).

## Run
Spustte ```run.bat``` a dojde ke spusteni wildlfy v interaktivnim modu (schvalne, takze uvidite vypis do konsole a pote startu muzeme pokracovat testem) a nasazeni aplikace ```signal```, viz ```app/target/signal.war```.

## Test
Diky interaktivnimu modu (tzn. nepouzili jsem parameter ```-d```) muzeme v okne, kde bezi a loguje nas spusteni wildfly kontejner. 

Zmacknete ```CLTR + C``` tim vyslete sigterm signal hlavnimu procesu a zavolejte ```docker logs``` a v logu dohledat toto:
```
10:39:04,543 INFO  [stdout] (ServerService Thread Pool -- 80) Startup of singleton...
...
10:39:30,004 INFO  [stdout] (ServerService Thread Pool -- 80) Termination of singleton...
...
10:39:30,113 INFO  [org.jboss.as] (MSC service thread 1-3) WFLYSRV0050: WildFly Full 27.0.1.Final (WildFly Core 19.0.1.Final) stopped in 151ms
*** JBossAS process (120) received TERM signal ***
```


## Zdroje
+ https://en.wikipedia.org/wiki/Signal_(IPC)
+ https://docs.docker.com/engine/reference/commandline/stop/
+ https://signoz.io/blog/docker-container-lifecycle/ << zminka o docker stop + signalech
+ https://github.com/wildfly/quickstart/tree/main/helloworld-singleton << singleton pro test sigterm-u