# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY . .

# Install app dependencies
RUN npm install

# Expose the port that the app will run on
EXPOSE 5000

# Define the command to run your app
CMD [ "node", "server.js" ]
