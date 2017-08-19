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
  
    
    stage('Build image') {
      steps {
        /* This builds the actual image; synonymous to
         * docker build on the command line */

       def app = docker.build("gaurav168/hellonode")
    }
    }
  stage('Push image') {
       steps {
        withDockerRegistry([credentialsId: '0f690faf-cafd-454f-bc3e-568506336470']) {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
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
