# cloud-ia2

Docker file

FROM node
using the node

# Set the working directory for our app in this case it is app
WORKDIR /app

# Copy all the /app files to our docker container
COPY . .

# Install dependencies that arereq for our project
RUN npm install


# Expose port 3000
EXPOSE 3000

# Start the application , this command is executed after the container is created
CMD ["npm", "start"]
