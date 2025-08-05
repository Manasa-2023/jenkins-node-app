pipeline {
    agent any

    environment {
        IMAGE_NAME = "my-node-app"
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Manasa-2023/jenkins-node-app.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying app...'
            }
        }
    }
}
