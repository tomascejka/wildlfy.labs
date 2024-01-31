# https://www.wildfly.org/news/2022/11/10/wildfly-docker-temurin/
ARG WILDFLY_VERSION=30.0.0.Final
ARG JDK_VERSION=jdk17
FROM quay.io/wildfly/wildfly:${WILDFLY_VERSION}-${JDK_VERSION}
COPY --chown=jboss:root target/server $JBOSS_HOME
RUN chmod -R ug+rwX $JBOSS_HOME

USER jboss
ADD target/microprofile-config.war /opt/jboss/wildfly/standalone/deployments/