FROM quay.io/keycloak/keycloak:26.5.1

RUN echo '#!/bin/bash' > /opt/keycloak/bin/start.sh && \
    echo 'exec /opt/keycloak/bin/kc.sh start-dev --http-enabled=true --http-port=10000 --hostname-strict=false' >> /opt/keycloak/bin/start.sh && \
    chmod +x /opt/keycloak/bin/start.sh

EXPOSE 10000

CMD ["/opt/keycloak/bin/start.sh"]
