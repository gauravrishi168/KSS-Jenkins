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
    stage('test') {
      steps {
        sh 'mvn test'
      }
    }
    stage('Build') {
      steps {
        sh 'mvn package'
      }
    }
    stage('Artifacts') {
      steps {
        archiveArtifacts(allowEmptyArchive: true, artifacts: 'target/*.jar')
      }
    }
    stage('Docker Build') {
      steps {
        sh 'docker build -t myjenkins .'
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