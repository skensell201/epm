pipelane {
    agent { dockerfile true
            }
        stages {
            stage('Build') {
                steps {
                    script {
                          docker.build registry + ":$BUILD_NUMBER"
                        }
                    }
                }
            }
        }