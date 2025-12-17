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
                echo 'Building Docker image'
                bat 'docker build -t devops-mini-project ./app'
            }
        }

        stage('Terraform Init') {
            steps {
                echo 'Terraform init'
                bat 'cd terraform && C:\\terraform\\terraform.exe init'
            }
        }

        stage('Terraform Apply') {
            steps {
                echo 'Terraform apply'
                bat 'cd terraform && C:\\terraform\\terraform.exe apply -auto-approve'
            }
        }
    }
}
