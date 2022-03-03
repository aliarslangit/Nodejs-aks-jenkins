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
stage('Setting the variables values') {
    steps {
         sh '''#!/bin/bash
                 ls
         '''
    }
}

    }
}
