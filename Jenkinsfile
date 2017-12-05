node {
    def app

   
    stage('Build') {
       checkout scm
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        app = docker.build("kramarov555/test-nginx")
    }

   stage('Dockerize') {

    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }


    
   
}
