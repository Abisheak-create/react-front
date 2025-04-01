pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Abisheak-create/react-front.git'
            }
        }
        stage('Docker Build') {
            steps {
                script {
                    sh 'docker build -t abisheak469/test-guvi:$BUILD_NUMBER .'
                }
            }
        }
        stage('Docker Push') {
            steps {
                script {
                    sh 'docker push abisheak469/test-guvi:$BUILD_NUMBER'
                }
            }
        }
        stage('Docker Pull') {
            steps {
                script {
                    sh 'docker pull abisheak469/test-guvi:$BUILD_NUMBER'
                }
            }
        }
        stage('Docker ps') {
            steps {
                script {
                    sh 'docker ps -a'
                }
            }
        }
        stage('Container run') {
            steps {
                script {
                    sh 'docker run -d -p 8083:80 abisheak469/test-guvi:$BUILD_NUMBER'
                }
            }
        }
    }
}
