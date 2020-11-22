@Library('github.com/releaseworks/jenkinslib')_
pipeline {
     agent any
     stages {
        stage("Deploy da desgraça") {
            steps {
                sh "git checkout deploy"
                sh "echo #########################################################3"
                sh "cat /home/ec2-user/.aws/credentials"
            }
        }
          stage("List S3 buckets") {
             steps{
                withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'aws-key', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                AWS("s3 sync build/ s3://allpets.app --acl public-read ")
            }
        }
     }
  }
}

