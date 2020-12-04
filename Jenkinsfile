peline {
      agent any
      stages {
        stage('Cloning Git') {
          steps {
           git branch: '**', credentialsId: 'githublguml', url: 'https://github.com/lguml/employeeapp'
          }
        }
        stage('Build') {
           steps {
             sh 'mvn clean package'
           }
        }
        stage('Building image') {
    	   steps{
    		  sh 'docker build . -t employeeapp:${BUILD_NUMBER}'  
    
            }
         }
        stage('tag image') {
          steps{
              sh 'docker tag employeeapp:${BUILD_NUMBER} lgumldocker/app:latest' 
            }
         }
        stage('push app --> dockerhub') {
          steps{
              sh 'docker push lgumldocker/app:latest' 
            }
         }
         stage('Remove Unused app docker image') {
            steps{
                sh 'docker rmi employeeapp:$BUILD_NUMBER lgumldocker/app:latest'
            }
        }
    	stage('Building database image') {
    	   steps{
    		  sh 'docker build sql/. -t appdb:${BUILD_NUMBER}'  
    
            }
         }
        stage('tag database image') {
          steps{
              sh 'docker tag appdb:${BUILD_NUMBER} lgumldocker/appdb:latest' 
            }
         }         
        stage('push appdb --> dockerhub') {
          steps{
              sh 'docker push lgumldocker/appdb:latest' 
            }
         }
         stage('Remove Unused db docker image') {
            steps{
                sh 'docker rmi appdb:$BUILD_NUMBER lgumldocker/appdb:latest'
            }
        }         
      }
    }
