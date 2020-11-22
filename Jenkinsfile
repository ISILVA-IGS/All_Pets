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
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'key22', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                AWS("s3 sync build/ s3://allpets.app --acl public-read ")
            }
        }
     }
  }
}
