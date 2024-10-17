#  Dockerize a Static Website

## Description: Containerize a simple static HTML website.

## Steps:
-> Create a basic static website (HTML, CSS).

## -> Write a Dockerfile with Nginx or Apache.
# Use the official Nginx image as the base
FROM nginx:alpine

# Copy your static website files to the Nginx default location
COPY . /usr/share/nginx/html/

# Expose port 80 to access the website
EXPOSE 80

## -> Build the Docker image.
docker build -t my-static-website .

##-> Run the container and access the website via browser.
docker run -d -p 8000:80 my-static-website
(This command maps port 8000 on your local machine to port 80 inside the container (where Nginx is serving your website). The -d flag runs the container in detached mode (in the background)).



