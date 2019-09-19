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
            stages {
              stage('Cloning Git') {
                steps {
                  git 'https://github.com/skensell201/epm.git'
                }
              }
              stage('Building image') {
                steps{
                  script {
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                  }
                }
              }
              stage('Deploy Image') {
                steps{
                  script {
                    docker.withRegistry( '', registryCredential ) {
                      dockerImage.push()
                    }
                  }
                }
              }
              stage('Remove Unused docker image') {
                steps{
                  sh "docker rmi $registry:$BUILD_NUMBER"
                }
              }
            }
          }