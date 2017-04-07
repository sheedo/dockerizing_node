# Dockerizing Node Server
Download exisiting docker image (ubuntu:16.04) and Install NodeJS and NPM.
A node server application will then run and listen on the port# 8080 for an
HTTP GET request on the route /hello.

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
copied to the docker image please add it there.

3. Build the docker image using the command below
```engine='sh'
docker build -t assignment/node-web-server .
```
4. Run the docker image and bind/map the container port and host port to 8080 so we can communicate with the server
running inside the docker container
```engine='sh'
docker run -p 8080:8080 -td assignment/node-web-server
```
**NOTE:** If you are using Boot2Docker the port (8080) will only be exposed to the virtual machine running inside virtual box not to the Host. You have to forward the port from Virtualbox to your host.
```engine='sh'
VBoxManage controlvm boot2docker-vm natpf1 "node-port,tcp,127.0.0.1,8080,,8080"
```
5. Perform an HTTP GET request using curl on any of these routes to access the web server
```engine='sh'
curl http://localhost:8080/hello
curl http://127.0.0.1:8080/hello
```
**NOTE:** If you are using Docker Toolbox on Windows, Linux or OSX you need to use the IP address of the VM
and not localhost. When you expose a containers port it's only being exposed to the Linux VM and not your 
Host OS, so you need to connect to the IP of the Linux VM to communicate with the server inside the container. If 
VBoxManage is installed on the host you can foward the Linux VM port to the host.
```engine='sh'
curl http://$(docker-machine ip default):8080/hello
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


