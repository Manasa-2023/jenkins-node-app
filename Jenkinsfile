pipeline {
    agent any

    stages {
        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-node-app .'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Run tests here"'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker run -d -p 3000:3000 my-node-app'
            }
        }
    }
}
