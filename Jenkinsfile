pipeline { 
    environment { 
        registry = "anciyaregi/demo" 
        registryCredential = 'anciyadockerhub' 
        dockerImage = '' 
    }
    agent any 
    stages { 
        stage('Building our image') { 
            steps {
                  script { 
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            } 
        }
    stage('pushes our image') { 
        steps { 
            script { 
                docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        
        }
        stage('Deploy using Helm') {
            steps {    
                sh "helm upgrade --install my-release my-chart --namespace my-namespace --set key1=value1,key2=value2"    
                sh "kubectl rollout status deployment/my-release --namespace my-namespace"
  }
}
