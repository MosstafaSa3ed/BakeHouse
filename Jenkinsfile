pipeline {
    agent any
    stages {
        stage('build'){
            steps{
                sh """
                 docker build -t mostafasa3ed/hello   
                """
            }
        }
        stage('deploy to dockerhub'){
            steps{
                sh """
                 docker push mostafasa3ed/hello   
                """
            }
        }
    }
}
