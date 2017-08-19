pipeline {
  agent {
    docker {
      image 'maven:3.5-jdk-8'
    }
    
  }
  stages {
    stage('Greeting') {
      steps {
        echo 'Greeting'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn test'
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