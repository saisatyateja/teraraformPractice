pipeline{
    agent{
        label "terra"
    }
    Stages{
        stage('vcs'){
            steps{
                git url: ,
                branch:
            }
        }
         stage('applt terraform to s3'){
            steps{
                sh 'terraform init'
                sh 'terraform validate'
                sh 'terraform aplpy -auto-approve'
            }
        }
    }
}