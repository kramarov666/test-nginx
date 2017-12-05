node {
    def app

   
   stage('Build') {
       checkout scm
        app = docker.build("kramarov555/test-nginx")
    }

   stage('Dockerize') {

         docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }

  stage('Deploy') {
        checkout scm
        sh('bash deploy.sh') 
    }



    
   
}
