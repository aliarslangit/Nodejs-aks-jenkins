pipeline {
   agent any
    
  environment {
        docker=credentials('docker')
        registry = "aliarslanmushtaq/nodejs-microservice"
        registryCredential = 'docker'
        dockerImage = ''
    }
  
    parameters {
       
        string(name: 'temp', defaultValue: 'temp', description: '')

    }
    stages {
        stage('Git checkout') { 
            steps{
                sh 'whoami'
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/aliarslangit/Nodejs-aks-jenkins.git'
        }
        }
stage('Install az cli') {
    steps {
         sh '''#!/bin/bash
                 ls
                 sudo -i
                 curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
                 sudo apt install docker.io -y
                 sudo systemctl enable --now docker
                 sudo docker --version
         '''
    }
}
        stage('Connect to Aks') {
            steps {
    
                    withCredentials([azureServicePrincipal('azcli')]) {
                    sh 'az login --service-principal -u $AZURE_CLIENT_ID -p $AZURE_CLIENT_SECRET -t $AZURE_TENANT_ID'
                    }
            sh "az aks get-credentials --resource-group rg-apim --name apim-aks"
            }
 }

 stage('Build Docker Image')
 {
     steps{
     sh 'sudo docker build -t aliarslanmushtaq/nodejs-microservice . '

 }
 }
 stage('Docker Login')
 {
     steps{
         withCredentials([usernamePassword(credentialsId: 'docker', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
  sh 'sudo docker login  -u $USERNAME -p $PASSWORD'
         }
}
     }
 

       stage('Push image') {
           steps{
               sh 'sudo docker push aliarslanmushtaq/nodejs-microservice:latest'
                }
       }
}
}