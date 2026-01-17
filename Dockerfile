FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy CI-built assets only
COPY dist /usr/share/nginx/html
