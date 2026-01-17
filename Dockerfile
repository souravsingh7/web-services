FROM quay.io/keycloak/keycloak:26.5.1

ENV KEYCLOAK_ADMIN=admin
ENV KEYCLOAK_ADMIN_PASSWORD=admin

EXPOSE 10000

CMD ["/opt/keycloak/bin/kc.sh", "start-dev", "--http-enabled=true", "--http-host=0.0.0.0", "--http-port=10000", "--hostname-strict=false"]
