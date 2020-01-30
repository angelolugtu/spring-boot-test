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
				withMaven(maven: 'MAVEN_HOME') {
					sh 'mvn clean package'
				}
				echo 'Success'
			}
		}	
	}
}
