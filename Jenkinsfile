pipeline {
    agent any

    environment {
        KUBECONFIG_FILE = credentials('Trojankube')
        NAMESPACE = 'sample'
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Deploy') {
            steps {
                sh "kubectl apply -f deployment.yaml --kubeconfig=${KUBECONFIG_FILE} --namespace=${NAMESPACE}"
            }
        }
    }
}

