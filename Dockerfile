# Use Node.js base image
FROM node:16

# Set working directory inside container
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy remaining source files
COPY . .

# Expose app port
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
