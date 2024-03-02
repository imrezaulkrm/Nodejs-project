# Employee Management System (EMS)
  
The Employee Management System is a straightforward and efficient web application designed to streamline the management of employee information. The project comprises two main pages, each serving a specific purpose. The first page features an intuitive employee form, facilitating the seamless addition of new team members. This form collects essential details such as name, email, contact number, and location, ensuring a comprehensive and organized input process.

On the second page, users can access a dynamic employee list that provides a comprehensive overview of all registered personnel. This centralized hub allows for easy navigation through the list, enabling users to view, edit, and delete employee details effortlessly. The edit functionality supports updates to existing employee information, promoting accurate and up-to-date records, while the delete feature ensures efficient management of the workforce by removing outdated or irrelevant entries.

The Employee Management System prioritizes a user-friendly interface to enhance the overall experience for those interacting with the application. With a focus on simplicity and functionality, this system offers a convenient solution for organizations to manage their workforce effectively, from onboarding new hires to maintaining accurate and relevant employee records.
![1st Page](https://github.com/imrezaulkrm/Nodejs-project/raw/main/images/1st-page.png)

![2nd page](https://github.com/imrezaulkrm/Nodejs-project/raw/main/images/2nd-page.png)
## Table of Contents
- [Project Structure](#project-structure)
- [Configuration](#configuration)
- [Dockerization](#dockerization)
  - [Dockerfile](#dockerfile)
  - [Building the Docker Image](#building-the-docker-image)
  - [Pull Docker Image](#pull-docker-image)
  - [Running the Docker Container](#running-the-docker-container)
- [Accessing The Application](#accessing-the-application)
- [Conclusion](#conclusion)
- [License](#license)

## Project Structure
```bash
├── config 
│   ├── index.js 
├── db 
│   ├── mongoose.js 
├── models 
│   ├── employees.js 
├── public 
│   ├── css 
│   │   ├── addOrUpdate.css 
│   │   ├── employees.css 
├── routes 
│   ├── employee.js 
├── views 
│   ├── employees 
│   │   ├── addOrEdit.ejs 
│   │   ├── list.ejs 
├── Dockerfile 
├── package-lock.json 
├── package.json 
└── server.js
```
Briefly describe the purpose of each main directory in your project.

## Configuration
To configure the MongoDB connection in your project, follow these steps:

1. Open the config/index.js file.

2. Locate the following line of code:

```
const MONGODB_URL = "mongodb+srv://username_and_password@nodejs.3f7msqz.mongodb.net/?retryWrites=true&w=majority&appName=nodejs";
```
3. Replace the existing MongoDB URL with your own connection string. You can obtain the connection string from your MongoDB database provider.

```
const MONGODB_URL = "your_new_mongodb_url_here";
```
4. Save the changes.

## Dockerization

### Dockerfile

Create a `Dockerfile` in the project root with the following content:

```dockerfile
# Use an official Node.js runtime as a parent image
FROM node:alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Command to run the application
CMD ["npm", "start"]
```
### Building the Docker Image

To build the Docker image, run the following command in your project directory:
```
docker build -t your-image-name:tag-name-or-number .
```
### Pull Docker Image
You can pull the Docker image from my  Docker Hub repository:
```
docker pull imrezaulkrm/nodejs-project:01
```
### Running the Docker Container

Once the image is built, you can run the Docker container:
```
docker run -d -p 5000:5000 --name your-container-name your-imege-name
```

## Accessing The Application

Access the running application in a web browser at 
```
http://localhost:5000/employee
```

##   Conclusion

This README provides a comprehensive guide to understanding, configuring, and dockerizing the Node.js project. The project structure is clearly outlined, and users are guided through configuring the MongoDB connection and Dockerizing the application with a provided Dockerfile. The steps for building and pulling the Docker image, as well as running the Docker container, are presented in a concise and accessible manner. Users can easily access the application at `http://localhost:5000/employee` after following the provided instructions.

## License

This project is licensed under the MIT License. Feel free to use, modify, and distribute it as per the terms of the license.
