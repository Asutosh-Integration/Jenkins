FROM jenkins/jenkins:alpine

ENV JENKINS_USER admin
ENV JENKINS_PASS admin

# Skip initial setup
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

USER root
RUN apk add docker
RUN apk add py-pip

USER jenkins