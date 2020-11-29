pipeline {
     agent any
     stages {
        stage("Run Jar") {
            steps {
                sh "git checkout back"
                sh "git pull"
                sh "sh run.sh"
                sh "sleep 4"
                sh "sudo cp *.jar /"
                sh "sudo /usr/lib/jvm/java-14-openjdk-amd64/bin/java -jar /AllPets-0.0.1-SNAPSHOT.jar --server.port=8081&"
            }
        }
    }
}
