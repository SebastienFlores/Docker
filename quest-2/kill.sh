docker kill $(docker ps -q)
docker stop $(docker ps -a -q)
docker container prune -f
docker network prune -f