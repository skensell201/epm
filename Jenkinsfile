
pipeline {
    agent {
        docker {
            image 'frolvlad/alpine-gcc'
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