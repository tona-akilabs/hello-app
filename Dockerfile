# Start from a Node.js 14 (LTS) image 1
FROM node:14

# Specify the directory inside the image in which all commands will run 2
WORKDIR /usr/src/app

# Copy package files and install dependencies 3
COPY package.json ./
COPY jarn.lock ./
RUN npm install
RUN npm install express

# Copy all of the app files into the image 4
COPY . .

# The default command to run when starting the container 5
CMD [ "npm", "start" ]