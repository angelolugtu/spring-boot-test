pipeline {
	environment {
    registry = "luinabaro/spring-boot-test"
    registryCredential = 'docker-login'
    dockerImage = ''
  }
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

    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build(registry + ":$BUILD_NUMBER")
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$BUILD_NUMBER"
      }
    }
  }
}
}
