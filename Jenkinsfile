/* stages {
            stage('Build') {
                steps {
                    sh './configure'
                    sh 'make'
                    sh 'make install'
                }
            } */
          pipeline {
            environment {
              registry = "skensel/epmjenk"
              registryCredential = 'dockerid777'
              dockerImage = ''
            }
            agent any

              stage('Deploy Image') {
                steps{
                  script {
                    docker.withRegistry( '', registryCredential ) {
                      dockerImage.push()
                    }
                  }
                }
              }

            }
          }