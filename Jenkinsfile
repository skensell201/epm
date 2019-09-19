
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
                       withDockerRegistry([ credentialsId: "dockerid777", url: "https://hub.docker.com/r/skensel/epmjenk" ]) {
                          // following commands will be executed within logged docker registry
                          sh 'docker push <image>'
                       }
                    }
                    }

          }
          }