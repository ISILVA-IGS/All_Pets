
pipeline {
     agent any
     @Library('github.com/releaseworks/jenkinslib')_
     stages {
        stage("Deploy") {
             
            steps {
                 
                sh "git checkout deploy"
                
            }
            node {
               stage("List S3 buckets") {
                    withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'aws-key', usernameVariable: 'AWS_ACCESS_KEY_ID', passwordVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                    AWS("--region=sa-east-1 s3 ls")
                    AWS("s3 sync build/ s3://allpets.app --acl public-read ")
                         
               }
            }
        }
    }
  }
}
