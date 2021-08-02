pipeline {
    agent any
    environment {
	DOCKERHUB_CREDENTIALS = credentials('mostafasa3ed-dockerhub')
    }
    stages {
        stage('build'){
            steps{
                sh """
                 sudo docker build -t mostafasa3ed/hello .   
                """
            }
        }
	stage('login to dockerhub'){
            steps{
		sh """
		 sudo docker login -u DOCKERHUB_CREDENTIALS_USR -p DOCKERHUB_CREDENTIALS_PSW
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
