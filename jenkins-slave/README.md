jenkins-slave
=============
Run this slave using the following command:

	docker run -e SLAVE_NAME=[slave name] -d -name slave -link [name of jenkins container]:jenkins wouterd/jenkins-slave

With the jenkins container being an instance of quintenk/jenkins
