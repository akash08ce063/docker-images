FROM quintenk/jdk-oracle

MAINTAINER Wouter Danes "https://github.com/wouterd"

RUN mkdir -p /var/jenkins

WORKDIR /var/jenkins
CMD wget http://${JENKINS_PORT_8080_TCP_ADDR}:${JENKINS_PORT_8080_TCP_PORT}/jnlpJars/slave.jar && java -jar /var/jenkins/slave.jar -jnlpUrl http://${JENKINS_PORT_8080_TCP_ADDR}:${JENKINS_PORT_8080_TCP_PORT}/computer/${SLAVE_NAME}/slave-agent.jnlp