pipeline {
   agent any
    
  environment {
     temp = 'temp'  
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
stage('Setting the variables values') {
    steps {
         sh '''#!/bin/bash
                 echo "hello world" 
         '''
    }
}

    }
}
