pipeline {
  agent {
    docker {
      image 'maven'
      args '3.5-jdk-8'
    }
    
  }
  stages {
    stage('Greeting') {
      steps {
        echo 'Greeting'
      }
    }
  }
  post {
    always {
      archive 'target/**/*.jar'
      
    }
    
  }
  triggers {
    cron('*/2 * * * *')
  }
}