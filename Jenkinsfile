pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'my-nginx'
    }
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image
                    docker.build(env.DOCKER_IMAGE)
                }
            }
        }
        
        stage('Deploy Docker Image') {
            steps {
                script {
                    // Run the Docker container
                    docker.image(env.DOCKER_IMAGE).run('-d -p 8080:80')
                }
            }
        }
    }
    
    post {
        always {
            // Clean up: stop and remove the Docker container
            script {
                docker.image(env.DOCKER_IMAGE).stop()
                docker.image(env.DOCKER_IMAGE).remove()
            }
        }
    }
}
