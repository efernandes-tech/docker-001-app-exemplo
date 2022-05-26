# Create image from the node image (because already has Ubuntu installed)
FROM node:14

# Work dir (where the commands below will be executed)
WORKDIR /app-node

# Build variables
ARG PORT_BUILD=6000

# Enviroment variables
ENV PORT=$PORT_BUILD

# Port exposed for application
EXPOSE $PORT_BUILD

# Copies the project files into the image
COPY . .

# Installs dependencies front-end during build
RUN npm install

# What happens when the container starts
ENTRYPOINT npm start