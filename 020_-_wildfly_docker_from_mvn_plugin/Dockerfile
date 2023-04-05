#
# Dockerfile for wildlfy - wildfly is build/got by via wildfly maven plugin
#
# @see 1. https://github.com/jboss-dockerfiles/wildfly
# @see (use)2. https://github.com/l2x6/calculator-ws/blob/1.1/Dockerfile >> FROM eclipse-temurin:11-jre
# @see 3. https://www.wildfly.org/news/2022/11/10/wildfly-docker-temurin/ >> FROM quay.io/wildfly/wildfly:27.0.0.Final-jdk17
#
# ad 3. moving from openjdk/centos to new temurin-based jdks
#
#ARG WILDFLY_VERSION=27.0.1.Final-jdk17
#FROM quay.io/wildfly/wildfly:${WILDFLY_VERSION}
FROM eclipse-temurin:11-jre
COPY target/server /opt/jboss/wildfly

# Ensure signals are forwarded to the JVM process correctly for graceful shutdown
ENV LAUNCH_JBOSS_IN_BACKGROUND true

# Expose the ports we're interested in
EXPOSE 8080

# Set the default command to run on boot
#ENV BASIC_AUTH_USER=""
#ENV BASIC_AUTH_PASSWORD=""
# This will boot WildFly in the standalone mode and bind to all interface
#ENTRYPOINT ["/bin/sh", "-c", "if [ \"x$BASIC_AUTH_USER\" != \"x\" -a \"x$BASIC_AUTH_PASSWORD\" != \"x\" ]; then /opt/jboss/wildfly/bin/add-user.sh -a -u \"$BASIC_AUTH_USER\" -p \"$BASIC_AUTH_PASSWORD\" -g app-users; fi; /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0"]
CMD ["/opt/jboss/wildfly/bin/standalone.sh", "-b", "0.0.0.0"]