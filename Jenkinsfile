pipeline {
     agent any
     stages {
        stage("Run Jar") {
            steps {
                sh "git checkout back"
                sh "export port=`sudo lsof -t -i:8081`"
                sh "sudo kill -9 $port"
                sh "rm -rf /jenkins"
                sh "mkdir /jenkins"
                sh "sudo cp *.jar /"
                sh "sudo /usr/lib/jvm/java-14-openjdk-amd64/bin/java -jar /jenkins/AllPets-0.0.1-SNAPSHOT.jar --server.port=8081&"
            }
        }
    }
}
