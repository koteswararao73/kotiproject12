node {
    
    stage ('checkout/clone') {
        git branch: 'main', url: 'https://github.com/koteswararao73/kotiproject12.git'
    }
    stage ('deploy') {
        sh ''' cp /var/lib/jenkins/workspace/static-deployment-pipeline/index.html /var/www/html '''
    }
}
