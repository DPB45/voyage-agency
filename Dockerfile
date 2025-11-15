# Stage 1: Use a minimal Nginx image to serve the static files
FROM nginx:alpine

# The Nginx default configuration expects static content to be in /usr/share/nginx/html.
# Copy the HTML files into the default Nginx directory.
# The files should be in the same directory as this Dockerfile when building.
COPY index.html /usr/share/nginx/html/
COPY destinations.html /usr/share/nginx/html/

# Expose port 80 (the default Nginx web port)
EXPOSE 80

# Nginx runs as the default CMD, so no need to specify ENTRYPOINT/CMD
# The container will start Nginx automatically when run.