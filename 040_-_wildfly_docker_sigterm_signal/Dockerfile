# @see https://github.com/jboss-dockerfiles/wildfly#wildfly-images
ARG WILDFLY_VERSION=quay.io/wildfly/wildfly:latest
FROM quay.io/wildfly/wildfly:${WILDFLY_VERSION}

COPY app/target/signal.war /opt/jboss/wildfly/standalone/deployments/signal.war

# Ensure signals are forwarded to the JVM process correctly for graceful shutdown
# tohle je hrozne dulezity... to mam zpusobit sigterm+sigkill, kdyz dojce container dostane stop command
ENV LAUNCH_JBOSS_IN_BACKGROUND true

# Expose the ports we're interested in
EXPOSE 8080

CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]