pipeline {
     agent any
     stages {
        stage("Run Jar") {
            steps {
                sh "git checkout back"
                sh "git pull"
                sh "await sh run.sh&"
            }
        }
    }
}
