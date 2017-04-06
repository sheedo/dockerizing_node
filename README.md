# Dockerizing Node Server
Download exisiting docker image (ubuntu:16.04) and Install NodeJS and NPM.
A node server application will then run and listen on the port# 8080 for an
HTTP GET request.

## How to use
1. Clone the Project
```engine='sh'
 git clone https://github.com/sheedo/dockerizing_node.git
 ```
2. Navigate to the project directory that contains the *Dockerfile*
```engine='sh'
cd dockerizing_node
```
**NOTE:** All contents in the current directory (*dockerizing_node*) will be copied to 
the docker image, except the files/directories specified in the *.dockerignore* file.
The current contents of the *.dockerignore* file is:
```engine='sh'
node_modules
instructions.sh
Assignment2.pdf
README.md
```
so if you don't want anything else to be
copied to the docker image please add it here.

3. Build the docker image using the command below
```engine='sh'
docker build -t assignment/node-web-server .
```
4. Run the docker image and bind/map the container port and host port to 8080 so we can communicate with the server
running inside the docker container
```engine='sh'
docker run -p 8080:8080 -td assignment/node-web-server
```
5. Perform an HTTP GET request using curl on any of these routes to access the web server
```engine='sh'
curl http://localhost:8080/hello
curl http://127.0.0.1:8080/hello
```
6. If everything is successful then the result should be
```engine='sh'
Hello cda5570
```

## Group Members
 - Rasheed Andrews(A00416093)
 - Siddharth Thangharaj(A00415256)
 - Bo Li(A00414186)
 - Kannagi Mahajan(A00407047)
 - Shola Komolafe(A00406817)


