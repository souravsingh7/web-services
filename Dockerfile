FROM bitnami/keycloak:latest

# Explicitly set binding - CRITICAL FOR RENDER
ENV KEYCLOAK_BIND_ADDRESS=0.0.0.0
ENV KEYCLOAK_HTTP_PORT=10000

# Production mode off for easier startup
ENV KEYCLOAK_PRODUCTION=false

# Enable health endpoints so Render can verify it's running
ENV KEYCLOAK_ENABLE_HEALTH_ENDPOINTS=true

# Logging to help debug
ENV KEYCLOAK_LOG_LEVEL=INFO

EXPOSE 10000
