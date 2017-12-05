cont_name="test-nginx"
ec2_name="test-nginx"
docker-machine create --driver amazonec2 --amazonec2-open-port 80 --amazonec2-region us-east-1 $ec2_name

eval $(docker-machine env $ec2_name)

docker pull kramarov555/test-nginx
docker rm $cont_name
docker run -d -p 80:80 --name $cont_name kramarov555/test-nginx
