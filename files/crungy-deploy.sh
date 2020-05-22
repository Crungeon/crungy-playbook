cd /home/pi/Projects/crungy
git pull
docker build -t crungy .
cd /home/pi
docker kill crungy
docker rm crungy
docker run -d --name crungy --env-file .env crungy:latest