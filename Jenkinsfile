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
                echo 'Build'
            }
        }
        stage('Test') {
            steps { 
                echo 'Test'
            }
        }
        stage('Deploy') {
            steps { 
                echo 'Deploy'
            }
        }
    }
}