node {
    def app

   
    stage('Build image') {
       checkout scm
        /* This builds the actual image; synonymous to
         * docker build on the command line */
         sh "pwd"
        app = docker.build("kramarov555/test-nginx")
    }

    

    
   
}
