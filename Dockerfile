# use the latest node image
FROM node:current-alpine

# create directory inside container image for the app code
RUN mkdir -p /usr/src/app

# copy app code (.) to /usr/src/app in container image
COPY . /usr/src/app

# set the working directory
WORKDIR /usr/src/app

# install dependencies
RUN npm install

# command for the container to execute
ENTRYPOINT [ "npm", "start" ]
