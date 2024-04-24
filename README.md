# Use a Node.js image
FROM node

# Set the working directory , in this case my project files are in app folder
WORKDIR /app

# Install dependencies taht are req from package.json
RUN npm install

# Copy the rest of the application to the container 
COPY . .

# Expose port 4000
EXPOSE 4000

# Start the application, this command is diff from RUN as this is executed after the container has been created
CMD ["npm", "start"]
