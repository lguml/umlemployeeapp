#!/bin/bash
echo "Stopping Application Container (app) & Database Container (appdb) if Running! "
docker stop app appdb
sleep 10s
echo "Removing old Application Container (app) & Database Container (appdb) if Exists! "
docker rm app appdb
sleep 10s
echo "Removing old Application Container (app) & Database Container (appdb)  Images if Exists! "
docker rmi lgumldocker/app:latest lgumldocker/appdb:latest
sleep 10s
echo "Pulling latest Application Container (app) from DockerHub Remote Repository! "
docker pull lgumldocker/app:latest
sleep 10s
echo "Pulling latest Database Container (appdb) from DockerHub Remote Repository! "
docker pull lgumldocker/appdb:latest
sleep 10s
echo "Starting latest Database Container (appdb)! "
docker run --name appdb  --restart unless-stopped -e MYSQL_ALLOW_EMPTY_PASSWORD=1 -p 3306:3306 -d lgumldocker/appdb:latest
sleep 10s
echo "Starting latest Application Container (app)! "
docker run  -p 7080:8080 --link appdb --restart unless-stopped --name app  -d lgumldocker/app:latest
sleep 10s
echo "http://localhost:7080/employeeapp/"
sh "start chrome 'http://localhost:7080/employeeapp/'" 