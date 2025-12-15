pipeline {
    agent any

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
                bat 'cd terraform && terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                echo 'Terraform apply'
                bat 'cd terraform && terraform apply -auto-approve'
            }
        }
    }
}
