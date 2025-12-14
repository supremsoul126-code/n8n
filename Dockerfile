
FROM n8nio/n8n:latest

# Set N8N port
ENV N8N_PORT=5678
EXPOSE 5678

# For Render health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s \
  CMD wget -qO- http://localhost:5678 || exit 1

CMD ["n8n"]
