pipeline {
    agent {
        node {
            label "Agent-1"
        }
    }
    environment {
        GREETING= 'Hello Jenkins'
    }
    options {
        timeout(time: 1, unit: 'HOURS')
    }
    // build
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
                sh """
                   echo "Here I wrote shell script"
                   echo "$GREETING
                """
            }
        }
        
    } 
    // post build
        post { 
        always { 
            echo 'I will always say Hello again!'
        }
        failure {
            echo 'This Runs when pipeline is failed, used generally to send alerts'
        }
    }  
}   
    
