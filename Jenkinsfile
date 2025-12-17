pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }

    stages {

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t devops-mini-project ./app'
            }
        }

        stage('Terraform Init') {
            steps {
                bat 'cd terraform && terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                bat 'cd terraform && terraform apply -auto-approve'
            }
        }
    }
}
