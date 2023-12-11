pipeline {
    agent any 
    stages {
        stage ('checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/koteswararao73/kotiproject12.git'
            }
        }
        stage ('run image') {
            steps {
                sh ''' docker build -t koti12 . '''
            }
        }
        stage ('push image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-hub') {
                     
                        sh ''' docker tag koti koteswarararaosairi/rajub:n12
                               docker push koteswarararaosairi/rajub:n12 
                               '''
                    }
                }
            }
        }
        stage ('run container') {
            steps {
                 sh ''' docker run --name  coon23 -d -p 8888:80 koteswarararaosairi/rajub:n12
                 '''
            }
        }
        
    }
}
