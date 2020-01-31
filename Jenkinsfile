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
				withMaven(maven: 'MAVEN_HOME'){
					sh 'mvn clean package'
					echo 'Success'
				}
			}
		}

		stage('Build Image') {
			steps {
				script {
						docker.withRegistry('', 'docker-login') {
							def customImage = docker.build("luinabaro/spring-boot-test:${env.BUILD_ID}")
							customImage.push()
     					}
					
				}
			}
			
		}
}
}
