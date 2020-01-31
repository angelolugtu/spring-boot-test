pipeline {
	agent any

	stages {
		stage('Clone') {
			steps {
				checkout scm
			}		
		}
		stage('Build War File') {
			agent {
                docker { image 'maven:3-alpine' }
            }
			steps {
				sh 'mvn clean package'
				echo 'Success'
			}
		}

		stage('Buld Image') {
			steps {
				script {
					docker.withTool('docker') {
						docker.withRegistry('https://hub.docker.com/', 'docker-login') {
							def customImage = docker.build("luinabaro/spring-boot-test:${env.BUILD_ID}")
							customImage.push()
     					}
					}
					
				}
			}
			
		}
}
}
