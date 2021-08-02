pipeline {
    agent any
    stages {
        stage('build'){
            steps{
                sh """
                 sudo docker build -t mostafasa3ed/hello .   
                """
            }
        }
        stage('deploy to dockerhub'){
            steps{
                sh """
                 sudo docker push mostafasa3ed/hello   
                """
            }
        }
    }
}
