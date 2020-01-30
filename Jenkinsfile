pipeline {
	agent any
	
	stages {
		stage('Clone') {
			steps {
				checkout scm
			}		
		}
		stage('Build') {
			withMaven(maven: 'apache-maven-3.6.3')
			steps {
				sh 'mvn clean package'
				echo 'Success'
			}
		}	
	}
}
