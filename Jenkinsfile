pipeline{
    agent{
        label "terra"
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
                sh 'terraform aplpy -auto-approve'
            }
        }
    }
}