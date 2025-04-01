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
    }
}
