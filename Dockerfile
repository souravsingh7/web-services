FROM quay.io/keycloak/keycloak:26.0.7

# Build the Keycloak server
RUN /opt/keycloak/bin/kc.sh build

# Expose port 10000 for Render
EXPOSE 10000

# Start Keycloak in development mode
# MUST bind to 0.0.0.0 for Render to detect the port
CMD ["/opt/keycloak/bin/kc.sh", "start-dev", \
     "--http-enabled=true", \
     "--http-host=0.0.0.0", \
     "--http-port=10000", \
     "--hostname-strict=false"]
