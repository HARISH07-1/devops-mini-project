pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image'
                sh 'docker build -t devops-mini-project ./app'
            }
        }

        stage('Terraform Init') {
            steps {
                echo 'Terraform init'
                sh 'cd terraform && terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                echo 'Terraform apply'
                sh 'cd terraform && terraform apply -auto-approve'
            }
        }
    }
}
