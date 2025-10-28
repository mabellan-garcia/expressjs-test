# Use official Node.js LTS image
FROM node:20-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy package.json and install deps
COPY package*.json ./
RUN npm install --only=production

# Copy app source
COPY . .

# Expose the port and start the app
EXPOSE 3000
CMD ["npm", "start"]
