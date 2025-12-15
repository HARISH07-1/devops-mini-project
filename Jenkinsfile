pipeline {
    agent any  // runs on any available Jenkins agent
    environment {
        // Optional: explicitly set PATH if needed
        PATH = "C:\\Terraform;C:\\Program Files\\Docker\\Docker\\Resources\\bin;${env.PATH}"
    }
    stages {
        stage('Checkout SCM') {
            steps {
                checkout scm
            }
        }

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
