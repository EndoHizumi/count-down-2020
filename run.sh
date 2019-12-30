docker stop count-down-2020
docker build . -t count-down-2020
docker run -d --name count-down-2020 -p 8080:8080 --rm count-down-2020
