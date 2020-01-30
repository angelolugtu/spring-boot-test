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
				withMaven(maven: 'apache-maven-3.6.3') {
					bat 'mvn clean package'
				}
				echo 'Success'
			}
		}	
	}
}
