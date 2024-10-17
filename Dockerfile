# Use the official Nginx image as the base
FROM nginx:alpine

# Copy your static website files to the Nginx default location
COPY . /usr/share/nginx/html/

# Expose port 80 to access the website
EXPOSE 80
