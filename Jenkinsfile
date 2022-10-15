pipeline{
    agent{
        label "terraform"
    }
    stages{
        stage('vcs'){
            steps{
                git url: 'https://github.com/saisatyateja/terraformPractice.git' ,
                branch: 'main'
            }
        }
         stage('applt terraform to s3'){
            steps{
                sh 'terraform init'
                sh 'terraform validate'
                sh 'terraform destroy -auto-approve'
            }
        }
    }
}