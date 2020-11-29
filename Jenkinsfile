pipeline {
     agent any
     stages {
        stage("Run Jar") {
            steps {
                sh "git checkout back"
                sh "git pull"
                sh "wait sh run.sh&"
            }
        }
    }
}
