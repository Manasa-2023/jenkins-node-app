pipeline {
    agent any

    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/your-username/your-node-repo.git' // Replace this
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'npm install'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t jenkins-node-app .'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Tests go here. Currently no tests implemented."'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker run -d -p 3000:3000 jenkins-node-app'
            }
        }
    }
}
