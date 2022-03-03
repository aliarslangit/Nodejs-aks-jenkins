pipeline {
   agent any
    
  environment {
     temp = 'temp'  
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
                 az login

         '''
    }
}

    }
}
