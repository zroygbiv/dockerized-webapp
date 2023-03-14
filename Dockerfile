# Specify base image; alpine is compact/stripped down
FROM node:alpine

# Install dependencies
WORKDIR /usr/app
COPY ./ ./
RUN npm install 

# Default command
CMD ["npm", "start"]

# /*
# Specify base image        ------>     FROM alpine

# Run commands to install   ------>     RUN npm install
# additional programs

# Specify command to run    ------>     CMD ["npm", "start"]
# on container startup
# */

# Commands 
# » docker build -t zroygbiv/basicwebapp .            <<  build and tag image
# » docker run -p 5000:8080 zroygbiv/basicwebapp      <<  run; route local host port.. 
# > start                                                 to port inside container
# > node index.js

# Listening on port 5000

# Navigate to address:
# http:localhost/5000



# Run container shell:
# » docker run -it zroygbiv/basicwebapp sh
# /usr/app #

#   OR

# ~ » docker ps
# CONTAINER ID   IMAGE                  COMMAND                   ....
# 4f2c7a32d22e   zroygbiv/basicwebapp   "docker-entrypoint.s…"    ....
# ~ » docker exec -it 4f2c7a32d22e sh
# /usr/app # 


# Base image source:
# https://hub.docker.com/_/node/