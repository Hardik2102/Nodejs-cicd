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
                # Remove existing container even if it's stopped
                docker ps -a -q -f name=nodejs-container | xargs -r docker rm -f
                
                # Run container on port 8081
                docker run -d -p 8081:3000 --name nodejs-container ${DOCKER_IMAGE}
                '''
            }
        }
    }
}
