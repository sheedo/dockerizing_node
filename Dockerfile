# Set the base image that the instructions will be 
# performed on, if image doesn't exist pull from docker hub
FROM ubuntu:16.04

# update package list from the repositories and download and 
# install any new version of software(upgrade)
# install nodejs and npm which will be used to run the web server
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    nodejs \
    npm

#  Create a symbolic link for node, so that it can be executed/run from
#  the shell
RUN ln -s /usr/bin/nodejs /usr/bin/node

# Create a folder/directory
RUN mkdir /usr/web-service

# Set the working directory to web-service
WORKDIR /usr/web-service

# Copy all contents from the current directory(except files and folders
# in the .dockerignore file)
COPY . /usr/web-service

# Install all node dependencies(eg. express) from the package.json file
RUN npm install

# informs Docker that the container listens on port 8080 at runtime.
EXPOSE 8080

# Run the npm start command which will run server.js, which can be accessed at
# http://127.0.0.1:8080/hello
CMD [ "npm", "start" ]