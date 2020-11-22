@Library('github.com/releaseworks/jenkinslib')_
pipeline {
     agent any
     stages {
        stage("Deploy da desgraça") {
            steps {
                sh "git checkout deploy"
            }
        }
          stage("List S3 buckets") {
             steps{
                withCredentials([string(accessKeyVariable: 'AWS_ACCESS_KEY_ID', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                sh "aws s3 sync build/ s3://allpets.app --acl public-read
            }
        }
     }
  }
}
