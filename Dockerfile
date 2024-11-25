# Use Node.js base image
FROM node:14

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app code
COPY . .

# Expose the application port
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
