
pipeline 
{
agent none
 stages
    {
   stage(' Build')
       {
     agent {
            app = docker.build("kramarov555/test-nginx") 
           }
        steps {
                echo 'build docker file'
            }
       }
   }
}
