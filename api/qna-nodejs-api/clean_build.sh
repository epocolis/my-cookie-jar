docker rmi nodejs-qna -f
docker rm qna -fv 
docker build -t nodejs-qna . 
# docker run -d -p 3000:3000 --name qna nodejs-qna
docker run -v $(pwd):/app:ro -v /app/node_modules -d --env PORT=4000 -p 3000:4000 --name qna nodejs-qna
docker exec -it qna bash
