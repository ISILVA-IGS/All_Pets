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
                withCredentials([[$class: 'UsernamePasswordMultiBinding', credentialsId: 'aws-key', usernameVariable: 'AKIAJNH6GO63TWX4YKFA', passwordVariable: '+eI3uhUEN/aoGI5GqtywMOkUvJoE+EmIJkJ19tB6']]) {
                AWS("s3 sync build/ s3://allpets.app --acl public-read ")
            }
        }
     }
  }
}
