pipeline {
    agent any
    stages {
        stage('Build') {
            agent {
                docker {
                    image: 'node:8-alpine'
                    args: '-u root'
                }
            }
            steps {
                sh 'npm install'
                // Future stuff
                // sh 'npm run eslint'
                // sh 'npm test'
                echo 'Building..'
            }
        }
    }
}
