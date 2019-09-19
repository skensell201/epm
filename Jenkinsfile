
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

            stage('Deploy') {
                steps {
                    steps {
                       withDockerRegistry([ credentialsId: "7d6e752d-d2c6-430b-a754-3c66783c9b6f", url: "" ]) {
                          // following commands will be executed within logged docker registry
                          sh 'docker push <image>'
                       }
                    }
                    }
                    }
          }
          }