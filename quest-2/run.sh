docker stop $(docker ps -a -q)
docker kill $(docker ps -q)
docker container prune -f
docker network prune -f
docker build -t postgresimg ./postgres
docker build -t redisimg ./redis
docker build -t resultimg ./result
docker build -t voteimg ./vote
docker build -t workerimg ./worker
docker network create back-end
docker network create front-end
docker volume create volumepsql 
docker create -i --mount type=volume,src=volumepsql,target=/var/lib/postgresql/data --name db --network back-end postgresimg
docker create -i -p 6379:6379 --name redis --network back-end redisimg
docker create -i -p 5000:5000 --name vote --network back-end voteimg
docker network connect front-end vote
docker create -i -p 4000:4000 --name result --network back-end resultimg
docker network connect front-end result
docker create -i  --name worker --network back-end workerimg

docker container start redis
docker container start vote
docker container start db
docker container start worker
docker container start result

