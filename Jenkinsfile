pipeline {
    agent {
        node {
            label "Agent-1"
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building . .'
            }
        }    
        stage('Test') {
            steps {
                echo 'Testing ..'
            }
        }    
        stage('Deploy') {
            steps {
                echo 'Deploying ..'
            }
        }
        
    } 

    post { 
        always { 
            echo 'I will always say Hello again!'
        }
        failure {
            echo 'This Runs when pipeline is failed, used generally to send alerts'
        }
    }  
}   
    
