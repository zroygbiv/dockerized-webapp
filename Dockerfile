# Specify base image; alpine is compact/stripped down
FROM node:alpine

# Install dependencies
WORKDIR /usr/app
COPY ./package.json ./
RUN npm install 
COPY ./ ./

# Default command
CMD ["npm", "start"]