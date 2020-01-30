pipeline {
	agent any
	
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
