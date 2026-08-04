pipeline {
    agent any

    environment {
        IMAGE = "anushperamaiyang/trend-app:v1"
        AWS_DEFAULT_REGION = "ap-south-1"
        CLUSTER_NAME = "trend-cluster"
    }

    stages {

        stage('Clone') {
            steps {
<<<<<<< HEAD
                git url: 'https://github.com/AnushPeramaiyanG/TrendStore.git,
=======
                git url: 'https://github.com/AnushPeramaiyanG/TrendStore-Guvi-Project.git',
>>>>>>> 48c8215aa518ec4bec8636d16682c35f84b5a66b
                    branch: 'main'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $IMAGE .'
            }
        }

        stage('Docker Push') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'USER',
                    passwordVariable: 'PASS'
                )]) {
                    sh '''
                    echo "$PASS" | docker login -u "$USER" --password-stdin
                    docker push $IMAGE
                    '''
                }
            }
        }

        stage('Deploy to EKS') {
            steps {
                sh '''
                aws eks update-kubeconfig --region $AWS_DEFAULT_REGION --name $CLUSTER_NAME
                kubectl apply -f k8s/deployment.yaml
                kubectl apply -f k8s/service.yaml
                '''
            }
        }
<<<<<<< HEAD
=======
        
>>>>>>> 48c8215aa518ec4bec8636d16682c35f84b5a66b
    }
}
