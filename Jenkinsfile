#!/usr/bin/env groovy
pipeline {
    environment {
    ENV_NAME = "${env.ENV_NAME}"
}

 parameters {
    //string(defaultValue: "TEST", description: 'What environment?', name: 'userFlag')
    choice(choices: ['DEV', 'STAGING', 'PRODUCTION'], description: 'Select field for target environment', name: 'DEPLOY_ENV')
    }
    agent any
	
    stages {
	    
       /*stage('Scm') {
            steps {
                echo 'Building..'
		
				
                sh 'mvn --version'
                 git 'https://github.com/musthaqeem2012/simple-app.git'
                 
            }
        }*/
       
		
	stage('Build') {
        when {
                branch 'Integration'
           	 }	
        steps {
		sh "mvn -Dmaven.test.failure.ignore=true clean package"
           
            
        }
    }
	     stage('Unit Test') { 
            	steps {
                sh 'mvn test' 
	       
            }
            post {
                always {
                    junit 'target/surefire-reports/*.xml' 
                }
            }
        }
        
    
    }
}
