How to build the container
docker build -t nodejs-qna . 


How to run the container
docker run -d -p 3000:3000 --name qna nodejs-qna


How to remove a running docker image:
docker rm qna -f


binding a volume,so tha we dont have to rebuild the container everytime we make changes

docker run -v $(pwd):/app -d -p 3000:3000 --name qna nodejs-qna

You can do all of this by running the clean_build.sh script.

## Using docker compose

create a docker-compose.yml file then run 
>> docker compose up

run
>> docker compose down -v
to bring down the container and remove the volumes that were created





