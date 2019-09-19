
pipeline {
    agent {
        docker {
            image 'gcc'
        }
    }

    stages {
            stage('Build') {
                steps {
                    sh './configure'
                    sh 'make'
                    sh 'make install'
                }
            }

            stage('Test') {
                steps {
                    apt-cache policy epm | grep Installed
                    }
                    }
          }
          }