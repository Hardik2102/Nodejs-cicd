pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "nodejs-app"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                // Build docker image from root folder
                sh "docker build -t ${DOCKER_IMAGE} ."
            }
        }

        stage('Deploy to Backend') {
            steps {
                // Stop and remove container if already running (optional, to avoid conflicts)
                sh '''
                    if [ $(docker ps -q -f name=nodejs-container) ]; then
                        docker stop nodejs-container
                        docker rm nodejs-container
                    fi
                '''
                // Run container with port mapping
                sh "docker run -d -p 8080:3000 --name nodejs-container ${DOCKER_IMAGE}"
            }
        }
    }
}
