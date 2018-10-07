FROM node:8.11.3-alpine

# Create work directory
WORKDIR /usr/src/app

# Install runtime dependencies
# RUN npm install yarn -g

# Copy app source to work directory
COPY ./dist /usr/src/app

# Install app dependencies
RUN npm install

# Build and run the app
CMD npm start
