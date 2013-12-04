#!/bin/bash
set -eux

JENKINS_AUTHORITY=${JENKINS_PORT_8080_TCP_ADDR}:${JENKINS_PORT_8080_TCP_PORT}
SLAVE_JAR_URL="http://${JENKINS_AUTHORITY}/jnlpJars/slave.jar"
JNLP_URL="http://${JENKINS_AUTHORITY}/computer/${SLAVE_NAME}/slave-agent.jnlp"

wget ${SLAVE_JAR_URL} -O slave.jar
java -jar slave.jar -jnlpUrl ${JNLP_URL}