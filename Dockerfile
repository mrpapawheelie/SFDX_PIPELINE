# Use a Node.js base image
FROM node:18

# Update and install required packages
RUN apt-get update && apt-get install -y wget xz-utils

# Install Salesforce CLI globally using npm
RUN npm install @salesforce/cli -g

# Set sfdx as the entrypoint
ENTRYPOINT ["sfdx"]

