pipeline {
     agent any
     stages {
        stage("Deploy") {
            steps {
                sh "git checkout back"
                sh "sudo cp *.jar /"
                sh "sudo /usr/lib/jvm/java-14-openjdk-amd64/bin/java -jar AllPets-0.0.1-SNAPSHOT.jar --server.port=8081 &"
            }
        }
    }
}
