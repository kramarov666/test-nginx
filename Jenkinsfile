node {
    def app

   
   stage('Build') {
       checkout scm
        app = docker.build("kramarov555/test-nginx")
       sh('docker images')
    }

   stage('Dockerize') {

         docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("latest")
        }
    }

  stage('Deploy') {
        checkout scm
        sh('bash deploy.sh') 
    }



    
   
}
