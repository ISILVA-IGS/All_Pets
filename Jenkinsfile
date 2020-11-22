pipeline {
     agent any
     stages {
        stage("Deploy") {
            steps {
                sh "git checkout deploy"
                sh "aws s3 sync build/ s3://allpets.app --acl public-read"
            }
        }
    }
}
