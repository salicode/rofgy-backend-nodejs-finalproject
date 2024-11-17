FROM node:18.12.1-bullseye-slim

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy necessary files
COPY . .

EXPOSE 3000

# CMD to run the application
CMD [ "node", "app.js" ]

# docker build -t salisu/customer-advance-system:tagname .
# docker push salisu/customer-advance-system:tagname
