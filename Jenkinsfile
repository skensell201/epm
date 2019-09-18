
pipeline {
    agent {
        docker {
            image 'gcc'
        }
    }

    stages {
            stage('Build') {
                steps {
                    sh 'make'
                    sh 'make install'
                }
            }
          }
          }