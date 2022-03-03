pipeline {
     /*agent {
    kubernetes {
      label 'jenkins-slave'
      defaultContainer 'jnlp'
      yaml """
apiVersion: v1
kind: Pod
metadata:
labels:
  component: ci
spec:
  # Use service account that can deploy to all namespaces
  serviceAccountName: jenkins
  containers:
  - name: terraform
    image: hashicorp/terraform:0.14.8
    command:
    - cat
    tty: true
  - name: kubectl
    image: gcr.io/cloud-builders/kubectl
    command:
    - cat
    tty: true
  - name: helm-kubectl-azcli
    image: ams0/az-cli-kubectl-helm:latest
    command:
    - cat
    tty: true
  - name: checkov
    image: bridgecrew/checkov
    command:
    - cat
    tty: true
"""
}
  }*/
   agent any
    environment {
     /*   AZURE_SUBSCRIPTION_ID= credentials('azuresubid') 
        AZURE_TENANT_ID= credentials('azuretenantid')
        AZURE_CLIENT_ID= credentials('azureclientid')
        AZURE_CLIENT_SECRET= credentials('azureclientsecret')
        AZ_USERNAME=credentials('azusername')
        AZ_PASSWORD=credentials('azpassword')
  */ temp = 'temp'  
    }
    parameters {
       
        string(name: 'clustername', defaultValue: 'cmpaks', description: '')
        string(name: 'rgname', defaultValue: 'rg-cmp-aks', description: '')
        string(name: 'location', defaultValue: 'eastus', description: '')
        string(name: 'nodesize', defaultValue: 'Standard_D2_v2', description: '')
        string(name: 'mincount', defaultValue: '1', description: '')
        string(name: 'maxcount', defaultValue: '3', description: '')
        string(name: 'dnsprefix', defaultValue: 'kubernetes-dns', description: '')
        string(name: 'owner', defaultValue: 'CMP', description: '')
        string(name: 'environment', defaultValue: 'Dev', description: '')
    }
    stages {
        stage('Git checkout') { 
            steps{
                sh 'whoami'
                git branch: 'main', credentialsId: 'github', url: 'https://github.com/aliarslangit/Nodejs-aks-jenkins.git'
        }
        }


    }
}
