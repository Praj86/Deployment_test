# Use an official Node.js image as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application files to the container
COPY . .

# Expose port 80 for the application
EXPOSE 80

# Define the default command to run the application
CMD ["node", "index.js"]
