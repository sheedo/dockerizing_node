# Build the docker image
docker build -t assignment/node-web-server .

# Run the docker image and bind/map the container port 8080
# to the host so we can communicate with the server
docker run -p 8080:8080 -td assignment/node-web-server

# Perform an HTTP get request using curl on any of these 
# routes to access the web server
curl http://localhost:8080/hello
curl http://127.0.0.1:8080/hello
