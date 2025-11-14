# Use a small NGINX image to serve static files
FROM nginx:alpine

# Remove the default nginx static content
RUN rm -rf /usr/share/nginx/html/*

# Copy your website files into nginx’s html directory
COPY . /usr/share/nginx/html/

# Expose port 80 (HTTP)
EXPOSE 80

# Use the default command of nginx
