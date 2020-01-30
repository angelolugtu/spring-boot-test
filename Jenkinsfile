pipeline {
	agent any
	docker.withRegistry('https://hub.docker.com/', 'docker-login') {
         docker.build('luinabaro/spring-boot-test:${BUILD_NUMBER}').push('latest')
       }

	stages {
		stage('Clone') {
			steps {
				checkout scm
			}		
		}
		stage('Build War File') {
			steps {
				withMaven(maven: 'apache-maven-3.6.3') {
					sh 'mvn clean package'
				}
				echo 'Success'
			}
		}
}
}
