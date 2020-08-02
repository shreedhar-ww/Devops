pipeline {
    agent {
        docker { image 'node:10-alpine' }
    }
    stages {
        stage('Restore') {
            steps {
                sh 'npm install'
            }
        }
        stage('Build') {
            steps {
                sh 'npm run-script build'
            }
        }
             
        stage('Deploy') {
            steps {
                sh 'rm ../../angularapp/*'
                sh 'cp ./dist/angularapp/* ../../angularapp/'
            }
        }             
    }
}