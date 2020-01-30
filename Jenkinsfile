pipeline {
	agent { dockerfile {
	    filename: 'Dockerfile'
	    args: '--privileged'
	}}

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
         				def customImage = docker.build("luinabaro/spring-boot-test:${env.BUILD_ID}")
                        customImage.push()
     				}
				}
			}
			
		}
}
}
