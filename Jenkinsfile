pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        echo 'firststep'
        echo 'my first step'
      }
    }

    stage('test firefox') {
      parallel {
        stage('test firefox') {
          steps {
            sh 'echo \'Testing Firefox\''
            sh '''echo "my first pipeline"
'''
          }
        }

        stage('test chrome') {
          steps {
            sh '''echo "testing chrome"
'''
          }
        }

        stage('Test Edge') {
          steps {
            sh 'echo \'Testing Edge\''
            sh 'echo "test edge"'
          }
        }

      }
    }

    stage('Deploy') {
      steps {
        echo 'Deploying'
        echo 'deploying my first pipeline'
      }
    }

  }
}