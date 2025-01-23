# Name: Choong Yi Yang
# Matric No.: U2102772
# Orignal Repository: https://github.com/jakesgordon/javascript-tetris
# Cloned Repository: https://github.com/Cattlepillow/javascript-tetris

# Base image
FROM node:18-slim

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy project files into the container
COPY . .

# Install a lightweight HTTP server
RUN npm install -g http-server

# Expose the port the app will run on
EXPOSE 5000

# Command to run the application
CMD ["http-server", ".", "-p", "5000"]