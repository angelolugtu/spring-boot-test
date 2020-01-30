pipeline {
	agent any
	
	tools {
		maven: 'MAVEN_HOME'
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
