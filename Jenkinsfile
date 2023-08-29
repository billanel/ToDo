pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'sudo npm install -g npm@7.24.2'
                sh 'sudo npm run build'
            }
        }
        
        stage('Deploy') {
            steps {
                sh 'sudo rm -rf /var/www/html'
                sh 'sudo cp -r ${WORKSPACE}/build/ /var/www/html'
            }
        }
    }
}
