pipeline {
	agent any
	
	tools {
		maven 'Maven 3.6.3',
		jdk 'jdk8'
	
	}
	
	stages {
		stage('Clone') {
			checkout scm
		
		}
		stage('Build') {
			steps {
				sh 'mvn clean package'
				echo 'Success'
			}
		}
	
	}

}