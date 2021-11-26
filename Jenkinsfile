pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'Building'
      }
    }

    stage('test firefox') {
      parallel {
        stage('test firefox') {
          steps {
            sh 'echo \'Testing Firefox\''
          }
        }

        stage('test chrome') {
          steps {
            sh 'echo \'Testing Chrome\''
          }
        }

        stage('Test Edge') {
          steps {
            sh 'echo \'Testing Edge\''
          }
        }

      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying'
      }
    }

  }
}