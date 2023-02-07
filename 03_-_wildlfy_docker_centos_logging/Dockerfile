#
# Dockerfile for wildlfy (base image is centos v7, see chapter Image internals in link [1])
#
# @see 1. https://www.wildfly.org/news/2022/08/04/wildfly-maven-docker/ (chapter Wildfly Docker Image)
# @see 2. https://quay.io/repository/wildfly/wildfly?tab=info
#
FROM quay.io/wildfly/wildfly:27.0.0.Final-jdk19
#FROM quay.io/wildfly/wildfly:latest
ADD app/app.war /opt/jboss/wildfly/standalone/deployments/