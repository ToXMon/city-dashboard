FROM nginx:alpine

# Copy the dashboard files
COPY index.html /usr/share/nginx/html/
COPY cities.json /usr/share/nginx/html/

# Copy custom nginx config
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
