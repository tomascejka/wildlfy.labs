# docker and wildlfy created from wildfly maven plugin
Snazim se rozchodit dalsi (vyvojarsky zamereny) zpusob, jak sestavit docker image s wildfly server-em.

## Build
Spuste ```build.bat``` dojde k sestaveni maven-base projektu (```mvn clean package```), coz zaridi, ze se stahne wildlfy server do ```target/server``` slozky. A pote se ```target/server``` nakopiruje do ```/opt/jboss/wildfly``` via ```Dockerfile``` a vznikne wildfly docker images (stazenou via wildlfy maven plugin).

## Run
Spuste ```run.bat``` a dojde ke spusteni (via ```docker run```) kontejneru s wildfly server-em.

## Test
Spuste ```test.ps1``` a dojde k zavolani ```curl http://localhost:8080/``` a zobrazi se homepage spusteneho wildfly serveru:

```
<!DOCTYPE html>

<html>
<head>
    <!-- proper charset -->
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />

    <title>Welcome to WildFly</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="StyleSheet" href="wildfly.css" type="text/css">
</head>

<body>
<div class="wrapper">
    <div class="content">
        <div class="logo">
                <img src="wildfly_logo.png" alt="WildFly" border="0" />
        </div>
        <h1>Welcome to WildFly</h1>

        <h3>Your WildFly instance is running.</h3>

        <p><a href="https://docs.wildfly.org">Documentation</a> | <a href="https://github.com/wildfly/quickstart">Quickstarts</a> | <a href="/console">Administration
            Console</a> </p>

        <p><a href="https://wildfly.org">WildFly Project</a> |
            <a href="https://community.jboss.org/en/wildfly">User Forum</a> |
            <a href="https://issues.jboss.org/browse/WFLY">Report an issue</a></p>
        <p class="logos"><a href="https://www.jboss.org"><img src="jbosscommunity_logo_hori_white.png" alt="JBoss and JBoss Community" width=
                "195" height="37" border="0"></a></p>

        <p class="note">To replace this page simply deploy your own war with / as its context path.<br />
            To disable it, remove the "welcome-content" handler for location / in the undertow subsystem.</p>
    </div>
</div>
</body>
</html>
```

## Zdroje
+ https://github.com/l2x6/calculator-ws/blob/1.1/Dockerfile << motiv teto laboratore
+ https://www.wildfly.org/news/2022/08/04/wildfly-maven-docker/ << jak se widlfy dockeruje officialne (diff)
+ https://www.wildfly.org/news/2022/11/10/wildfly-docker-temurin/ << update docker base image (openjdk-2-temurin)