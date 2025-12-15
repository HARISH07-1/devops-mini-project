pipeline {
  agent any

  environment {
    IMAGE_NAME = "devops-mini-app"
  }

  stages {
    stage('Checkout') {
      steps {
        git 'https://github.com/your-username/devops-mini-project.git'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t $IMAGE_NAME ./app'
      }
    }

    stage('Terraform Init') {
      steps {
        dir('terraform') {
          sh 'terraform init'
        }
      }
    }

    stage('Terraform Apply') {
      steps {
        dir('terraform') {
          sh 'terraform apply -auto-approve'
        }
      }
    }
  }
}
