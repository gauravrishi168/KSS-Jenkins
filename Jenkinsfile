pipeline {
  agent any
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