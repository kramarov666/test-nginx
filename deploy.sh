cont_name="test-nginx"
docker-machine create --driver amazonec2 --amazonec2-open-port 80 --amazonec2-region us-east-1 aws-sandbox

eval $(docker-machine env aws-sandbox)

docker pull kramarov555/test-nginx
docker rm $cont_name
docker run -d -p 80:80 --name $cont_name kramarov555/test-nginx
