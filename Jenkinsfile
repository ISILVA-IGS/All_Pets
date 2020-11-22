@Library('github.com/releaseworks/jenkinslib') _
pipeline {
     agent any
     stages {
        stage("Deploy") {
            steps {
                sh "git checkout deploy"
            }
        }
        stage("List S3 buckets") {
                sh "ls" 
                sh "pwd"
                sh "aws s3 sync build/ s3://allpets.app --acl public-read "
            
        }
  }
}
