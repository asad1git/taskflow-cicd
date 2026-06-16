# ── TaskFlow Dockerfile ──────────────────────────────────────────
# Base image: official nginx alpine (lightweight)
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy all TaskFlow HTML pages, CSS, and assets into nginx root
COPY index.html       /usr/share/nginx/html/
COPY add-task.html    /usr/share/nginx/html/
COPY task-list.html   /usr/share/nginx/html/
COPY task-detail.html /usr/share/nginx/html/
COPY contact.html     /usr/share/nginx/html/
COPY faq.html         /usr/share/nginx/html/
COPY about.html       /usr/share/nginx/html/
COPY style.css        /usr/share/nginx/html/

# Expose port 80
EXPOSE 80

# Nginx runs in foreground by default in official image
CMD ["nginx", "-g", "daemon off;"]
