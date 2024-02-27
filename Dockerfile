# Use an official Node.js runtime as a parent image
FROM node:20.11.1-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
#RUN npm config set registry https://registry.npmjs.org/

RUN npm install

# Bundle app source
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Start the application
CMD ["npm", "start"]

