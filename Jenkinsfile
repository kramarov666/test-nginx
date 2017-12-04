
pipeline 
{
agent none
 stages
    {
   stage(' Build')
       {
     agent { dockerfile filename 'Dockerfile'
             args: '-t kramarov555/test-nginx'
           }
        steps {
                echo 'build docker file'
            }
       }
   }
}
