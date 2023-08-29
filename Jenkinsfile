pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                sh 'sudo npm install -g npm@9.8.1'
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
