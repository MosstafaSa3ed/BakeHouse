pipeline {
    agent any
    enviroment {
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
		 echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u DOCKERHUB_CREDENTIALS_USR --password-stdin
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
