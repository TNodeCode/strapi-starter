# Base image
FROM node:15-alpine

# Working directory
WORKDIR /app

# Copy package.json
COPY ./package.json ./

# Install depdendencies
RUN npm i --production

# Copy app
COPY ./ ./

# Build app
RUN npm run build

# Start command
CMD sh run.sh