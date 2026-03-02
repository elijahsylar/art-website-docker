# Step 1: Start with nginx already installed
FROM nginx:alpine

# Step 2: Copy your site files into nginx's default web directory
COPY index.html /usr/share/nginx/html/
COPY js/ /usr/share/nginx/html/js/
COPY gallery/ /usr/share/nginx/html/gallery/
COPY images/ /usr/share/nginx/html/images/

# Step 3: Tell Docker this container listens on port 80
EXPOSE 80

# Step 4: nginx starts automatically from the base image, no CMD needed
