pipeline {
    agent any
    stages {
        stage('deployment'){
            steps{
                sh """
                 sudo kubectl apply -f deployment-dev.yml --kubeconfig=/home/msafcicu/.kube/config   
                """
            }
        }
        stage('load balancer'){
            steps{
                sh """
                 sudo kubectl apply -f load-balancer.yml --kubeconfig=/home/msafcicu/.kube/config  
                """
            }
        }
        stage('get external IP'){
            steps{
                sh """
                 sudo kubectl get service -n dev --kubeconfig=/home/msafcicu/.kube/config 
                """
            }
        }
    }
}
