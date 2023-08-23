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
                sh ''' docker build -t koti . '''
            }
        }
        stage ('push image') {
            steps {
                script {
                    withDockerRegistry(credentialsId: 'docker-hub') {
                     
                        sh ''' docker tag koti koteswarararaosairi/rajubro:n1
                               docker push koteswarararaosairi/rajubro:n1 
                               '''
                    }
                }
            }
        }
        stage ('run container') {
            steps {
                 sh ''' docker run --name  coon2 -d -p 888:80 koteswarararaosairi/rajubro:n1
                 '''
            }
        }
        
    }
}
