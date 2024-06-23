# Use the official Node.js image with LTS version as base image
FROM node:lts

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN yarn install

# Copy all files to the container
COPY . .

# Set environment variables
ENV APP_KEYS 4QR2O9pWvMscZbkd5NMF1jGhujB/hbLwKrf+1PfNq7A=,/i4Za13hrq03apQ1jl8MjOHbe7uePwgoicgt76A2OMs=

# Expose the Strapi port
EXPOSE 1337

# Start Strapi
CMD ["yarn", "develop"]

