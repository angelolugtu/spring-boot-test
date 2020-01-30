pipeline {
	agent any

	stages {
		stage('Clone') {
			steps {
				checkout scm
			}		
		}
		stage('Build War File') {
			steps {
				withMaven(maven: 'MAVEN_HOME') {
					sh 'mvn clean package'
				}
				echo 'Success'
			}
		}

		stage('Buld Image') {
			steps{
				script {
					docker.withRegistry('https://hub.docker.com/', 'docker-login') {
         				docker.build('luinabaro/spring-boot-test:${BUILD_NUMBER}').push('latest')
     				}
				}
			}
			
		}
}
}
