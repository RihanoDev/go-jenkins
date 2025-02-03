pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                    // Menggunakan Docker untuk build image
                    sh 'docker build -t go-jenkins .'
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    // Running test di dalam kontainer
                    sh 'docker run go-jenkins go test -v ./...'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    // Running kontainer di server lokal
                    sh 'docker run -d --name go-jenkins-app go-jenkins'
                }
            }
        }
    }
}