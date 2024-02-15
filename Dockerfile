# use node image as base image
FROM node:alpine

# set working directory
WORKDIR '/app'

# copy package.json file to the working directory
COPY package.json .

# install dependencies
RUN npm install

# copy all files from the current directory to the working directory

COPY . .

# start the application

CMD ["npm", "run", "start"]

# build the image

# docker build -t reactapp .

# docker tag <your-image-name> <your-dockerhub-username>/<your-repo-name>:latest

#docker login

#docker push <your-dockerhub-username>/<your-repo-name>:latest

#docker pull <your-dockerhub-username>/<your-repo-name>:latest

#docker run -d -p 3000:3000 <your-dockerhub-username>/<your-repo-name>:latest
