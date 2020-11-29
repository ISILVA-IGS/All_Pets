pipeline {
     agent any
     stages {
        stage("Run Jar") {
            steps {
                sh "git checkout back"
                sh "ls"
                sh "sh run.sh"
            }
        }
    }
}
