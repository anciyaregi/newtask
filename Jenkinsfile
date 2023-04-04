pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Checkout the source code from version control
                git url: 'https://github.com/anciyaregi/newtask.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image for the application
                sh 'docker build -t your-app .'
            }
        }

        stage('Deploy using Helm') {
            environment {
                // Set the Kubernetes namespace where you want to deploy the application
                NAMESPACE = 'sample'
            }

            steps {
                // Install or upgrade the Helm chart
                sh "helm upgrade --install test test --namespace ${env.NAMESPACE} --set key1=value1,key2=value2"

                // Wait for the deployment to complete
                sh "kubectl rollout status deployment/test --namespace ${env.NAMESPACE}"
            }
        }
    }
}
