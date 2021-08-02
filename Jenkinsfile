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
		 sudo docker login -u mostafasa3ed -p Mostafa_97
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
