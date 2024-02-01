sudo docker pull mongo
sudo docker pull mongo-express
mkdir test_mongo
sudo docker run -d --name mongodb -p 27017:27017 -v /home/student/test_mongo:/data/db mongo
sudo docker run -d --name mongo-express --link mongodb:mongo -p 8081:8081 -e ME_CONFIG_MONGODB_SERVER=mongo -e ME_CONFIG_BASICAUTH_USERNAME=admin -e ME_CONFIG_BASICAUTH_PASSWORD=password mongo-express
sudo docker rm -f mongodb mongo-express
sudo docker run -d --name mongodb -p 27017:27017 -v /home/student/test_mongo:/data/db mongo
sudo docker run -d --name mongo-express --link mongodb:mongo -p 8081:8081 -e ME_CONFIG_MONGODB_SERVER=mongo -e ME_CONFIG_BASICAUTH_USERNAME=admin -e ME_CONFIG_BASICAUTH_PASSWORD=password mongo-express
