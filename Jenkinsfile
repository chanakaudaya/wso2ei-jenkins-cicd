pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /Users/chanaka/.m2:/root/.m2'
        }
    }
    stages {
        stage('CD') {
            steps {
                sh 'cd JenkinsCICDSample'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean install'
            }
        }
        stage('CD-Deploy') {
            steps {
                sh 'cd HelloCompositeApp'
            }
        }
        stage('Deploy-Staging') {
            steps {
                sh 'mvn clean deploy -Dmaven.deploy.skip=true -Dmaven.car.deploy.skip=false'
            }
        }
    }
}
