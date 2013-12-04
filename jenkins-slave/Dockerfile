FROM quintenk/jdk-oracle

MAINTAINER Wouter Danes "https://github.com/wouterd"

RUN mkdir -p /var/jenkins

ADD runslave.sh /var/jenkins/runslave.sh

RUN chmod +x /var/jenkins/runslave.sh

WORKDIR /var/jenkins

CMD ./runslave.sh