# build
docker build -t tinyproxy-secure .

# run it
docker run -d \
  --name tinyproxy \
  -p 127.0.0.1:8888:8888 \
  tinyproxy-secure

https://hub.docker.com/r/vimagick/tinyproxy
