pipeline {
  agent {
    docker {
     image 'node:6-alpine'
     args '-p 3000:3000'
    }
  }
  environment {
    CI = 'true'
    HOME = '.'
    npm_config_cache = 'npm-cache'
  }
  stages {
    stage('Install Packages') {
      steps {
        sh 'npm install'
      }
    }
    stage('Build') {
      parallel {
        stage('Create Build Artifacts') {
          steps {
            sh 'npm run build'
          }
        }
      }
    }

stage('Production') {
  steps {
    withAWS(region:'sa-east-1',credentials:'CREDENTIALS_FROM_JENKINS_SETUP') {
    s3Delete(bucket: 'allpets.app', path:'**/*')
    s3Upload(bucket: 'allpets.app', workingDir:'build', includePathPattern:'**/*');
            }
          }
        }
    }
}
