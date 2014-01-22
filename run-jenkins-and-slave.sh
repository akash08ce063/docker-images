#!/bin/bash

set -eu

. docker-utils.sh

docker run -d -p 8080 -name jenkins quintenk/jenkins

sleep 10

docker run -d -name slave -link jenkins:jenkins -e SLAVE_NAME=Frits wouterd/jenkins-slave
