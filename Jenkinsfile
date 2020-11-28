pipeline {
     agent any
     stages {
        stage("Deploy") {
            steps {
                sh "git checkout back"
                sh "sudo cp *.jar /"
            }
        }
    }
}
