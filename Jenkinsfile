
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
        
    }
}
