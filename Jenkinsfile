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
             environment { 
                a = "AKIAJNH6GO63TWX4YKFA"
                b = "+eI3uhUEN/aoGI5GqtywMOkUvJoE+EmIJkJ19tB6"
         
            }
             steps{
                withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'aws-key', usernameVariable: 'a', passwordVariable: 'b']]) {
                AWS("s3 sync build/ s3://allpets.app --acl public-read ")
            }
        }
     }
  }
}
