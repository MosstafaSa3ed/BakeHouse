pipeline {
    agent any
    stages {
        stage('deployment'){
            steps{
                sh """
                 kubectl apply -f deployment-dev.yml --kubeconfig=/home/msafcicu/.kube/config   
                """
            }
        }
        stage('load balancer'){
            steps{
                sh """
                 kubectl apply -f load-balancer.yml   
                """
            }
        }
        stage('get external IP'){
            steps{
                sh """
                 kubectl get service -n dev  
                """
            }
        }
    }
}
