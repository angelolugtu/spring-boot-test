pipeline {
	agent any
	
	tools {
		maven "apache-maven-3.6.3",
		jdk "jdk1.8.0_241"
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
