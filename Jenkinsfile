pipeline {
     agent any
     stages {
        stage("Build") {
            steps {
                sh "ls"
                sh "pwd"
                sh "echo foiiii porra"
                
            }
        }
        stage("Deploy") {
            steps {
                sh "sudo cp /home/ec2-user/All_Pets/build /home/ec2-user/jenkins/"
            }
        }
    }
}
