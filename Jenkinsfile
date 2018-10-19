pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps { 
                checkout scm 
            }
        }
        stage('Configuation') {
            steps { 
                echo 'Configuration'
            }
        }
        stage('Build') {
            steps { 
                sh 'make build'
            }
        }
        stage('Test') {
            steps { 
                echo 'Test'
            }
        }
        stage('Release') {
            steps { 
                shw
                sh 'make release'
            }
        }
        stage('Deploy') {
            steps { 
                sh 'make deploy.ghpages'
            }
        }
    }
}