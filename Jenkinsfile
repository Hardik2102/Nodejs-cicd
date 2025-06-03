pipeline {
  agent any

  stages {
    stage('Clone') {
      steps {
        dir('..') {
          git 'https://github.com/Hardik2102/Nodejs-cicd.git'
        }
      }
    }

    stage('Build Docker Image') {
      steps {
        dir('..') {
          sh 'docker build -t nodejs-app .'
        }
      }
    }

    stage('Deploy to Backend') {
      steps {
        sshagent(['my-ssh-key']) {
          dir('..') {
            sh 'scp -o StrictHostKeyChecking=no docker-compose.yml ubuntu@3.82.142.194:/home/ubuntu/'
            sh 'ssh -o StrictHostKeyChecking=no ubuntu@3.82.142.194 "docker-compose up -d"'
          }
        }
      }
    }
  }
}
