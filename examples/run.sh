ENV_NETWORK="net"
docker network create $ENV_NETWORK

docker run --rm --network $ENV_NETWORK
docker run -d --rm --network $ENV_NETWORK --name green    -e COLOR=green amasucci/bluegreen
docker run -d --rm --network $ENV_NETWORK --name blue     -e COLOR=blue  amasucci/bluegreen
docker run -d --rm --network $ENV_NETWORK --name haproxy  -p 80:80       -v $PWD/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro haproxy
