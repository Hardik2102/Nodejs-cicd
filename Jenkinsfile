pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "nodejs-app"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                dir("${env.WORKSPACE}") {
                    sh 'docker build -t ${DOCKER_IMAGE} .'
                }
            }
        }

        stage('Deploy to Backend') {
            steps {
                sh 'docker run -d -p 8080:3000 --name nodejs-container ${DOCKER_IMAGE}'
            }
        }
    }
}
