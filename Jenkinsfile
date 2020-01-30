pipeline {
	agent any
	
	tools {
		maven 'Maven 3.6.3'
	}
	
	stages {
		stage('Clone') {
			steps {
				checkout scm
			}		
		}
		stage('Build') {
			steps {
				sh 'mvn clean package'
				echo 'Success'
			}
		}	
	}
}
