# Use the official Nginx image as base
FROM nginx:latest

# Remove default nginx index file
RUN rm -rf /usr/share/nginx/html/*

# Copy your custom index.html into the container
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start Nginx (default command from base image)
CMD ["nginx", "-g", "daemon off;"]
