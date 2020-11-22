pipeline {
     agent any
     stages {
        stage("Build") {
            steps {
                sh "git checkout deploy"
                sh "npm install"
                sh "npm run build"
                
            }
        }
        stage("Deploy") {
            steps {
                sh "echo ok"
                sh "ls"
            }
        }
    }
}
