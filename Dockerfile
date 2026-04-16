# Use official NGINX image
FROM nginx:alpine

# Remove default nginx html files
RUN rm -rf /usr/share/nginx/html/*

# Copy your html file to nginx folder
COPY hello.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]