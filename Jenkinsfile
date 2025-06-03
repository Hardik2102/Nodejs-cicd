pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "nodejs-app"
    }

    stages {
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t ${DOCKER_IMAGE} .'
            }
        }

        stage('Deploy to Backend') {
            steps {
                sh '''
                # Stop and remove old container if exists
                docker ps -q -f name=nodejs-container | xargs -r docker rm -f
                
                # Run container on a free host port (8081)
                docker run -d -p 8081:3000 --name nodejs-container ${DOCKER_IMAGE}
                '''
            }
        }
    }
}
