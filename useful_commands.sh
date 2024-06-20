## Some useful Docker commands ##
# Create a docker network by hand
docker network create [NETWORK]

# Raise the containers following the docker-compose.yml configuration
docker-compose up

# execute a command in a container knowing its ID or name
docker exec [CONTAINER NAME OR ID] [COMMAND]

# Connect to a container knowing its ID or name
docker exec -it [CONTAINER NAME OR ID] /bin/bash

# List the running containers
docker container list
# This one also shows stopped containers
docker ps -a

# Use this to get the IP addresses of the Docker containers
docker inspect [CONTAINER ID] | grep "IPAddress"

## Other useful commands ##
# Capture ICMP packages in eth0 interface. Used to capture and see ping packages. 
tshark -P -O icmp -i eth0
