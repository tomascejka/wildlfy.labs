#
# Dockerfile for wildlfy (inspiration[2], but it is based on centos, so migrate into another 
# base image jre [3]).
#
# @see 1. https://www.wildfly.org/news/2022/08/04/wildfly-maven-docker/ (chapter Wildfly Docker Image)
# @see 2. https://github.com/AdamBien/docklands/blob/master/wildfly/Dockerfile
# @see 3. https://hub.docker.com/_/eclipse-temurin
#
# Eclipse Temurin docker image variants
# 	- eclipse-temurin:<version>, based on Ubuntu
# 	- eclipse-temurin:<version>-alpine, based on Alpine 
# Be aware Ubuntu vs. Alpine has different shell variants for commands, eg. useradd/adduser etc.
#
ARG ENABLE_DEBUG=false
FROM eclipse-temurin:17.0.5_8-jre-alpine
#FROM eclipse-temurin:19.0.1_10-jre

ENV VERSION 27.0.0.Final
ENV INSTALL_DIR /opt
ENV WILDFLY_HOME ${INSTALL_DIR}/wildfly-${VERSION}
ENV DEPLOYMENT_DIR ${WILDFLY_HOME}/standalone/deployments/
ENV CONFIGURATION_DIR ${WILDFLY_HOME}/standalone/configuration

# (alpine)     @see https://www.cyberciti.biz/faq/how-to-install-curl-on-alpine-linux/
# (ubuntu/gnu) @see https://linux.die.net/man/8/adduser(-b basedir, -s shell (eg. /bin/sh, /bin/bash, /usr/bin/zsh), -d homedir)
# (alpine)     @see https://wiki.alpinelinux.org/wiki/Setting_up_a_new_user (-b, does not exists in alpine)
# (alpine)     @see https://www.baeldung.com/linux/docker-alpine-add-user#setting-a-password
RUN apk add -U --no-cache curl tar bash \
    && adduser -s /bin/bash -h ${INSTALL_DIR} serveradmin;echo serveradmin:serveradmin | chpasswd
# download/install/configure wildlfy
RUN curl -L -O https://github.com/wildfly/wildfly/releases/download/$VERSION/wildfly-$VERSION.tar.gz \
    && tar xf wildfly-$VERSION.tar.gz  \
    && mv /wildfly-$VERSION ${INSTALL_DIR} \
    && rm wildfly-$VERSION.tar.gz \
    && chown -R serveradmin:serveradmin /opt \
    && chmod a+x ${WILDFLY_HOME}/bin/standalone.sh \
    && chmod -R a+rw ${INSTALL_DIR}

# Ensure signals are forwarded to the JVM process correctly for graceful shutdown
ENV LAUNCH_JBOSS_IN_BACKGROUND true

USER serveradmin
ENV JAVA_OPTS=--enable-preview

ENV DEBUG=${ENABLE_DEBUG}
ENV DEBUG_PORT=8787

ADD app/app.war ${DEPLOYMENT_DIR}

EXPOSE 8080
EXPOSE 8787
EXPOSE 9990

ENTRYPOINT ${WILDFLY_HOME}/bin/standalone.sh -b=0.0.0.0 -bmanagement=0.0.0.0