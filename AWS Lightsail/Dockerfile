FROM mysql:8.0

# Copiar scripts de inicialización si existen
COPY ./scripts/ /docker-entrypoint-initdb.d/

EXPOSE 3306
