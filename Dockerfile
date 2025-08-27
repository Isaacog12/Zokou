# Use Node.js LTS
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install --production

# Copy the rest of the app
COPY . .

# Expose a port (Render requires one, even for bots)
EXPOSE 3000

# Start your bot
CMD ["npm", "start"]
