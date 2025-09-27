pipeline {
    agent any
    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
                sh 'pwd'
                sh 'ls -lrt'
            }
        }
        stage('Connecting to Web Server') {
            steps {
                withCredentials([sshUserPrivateKey(credentialsId: 'application', keyFileVariable: 'SSH_KEY')]) {
                        sh '''
                          ssh -i $SSH_KEY -o StrictHostKeyChecking=no ec2-user@43.205.111.114 "hostname -i"
                          echo 'Connecting to the Web Server...'
                        '''
                }
            }
        }
    }
}
