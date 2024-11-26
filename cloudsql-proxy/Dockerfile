FROM eu.gcr.io/cloud-sql-connectors/cloud-sql-proxy:2.14.0-alpine
EXPOSE 5432
USER root
RUN addgroup --gid 1000 cloudsqlproxy && adduser --system --uid 1000 cloudsqlproxy cloudsqlproxy
USER cloudsqlproxy
# CLOUDSQL_INSTANCE_ADDRESS format: <PROJECT>:<CLOUDSQL_INSTANCE_ID>=tcp:<PORT>
ENTRYPOINT ["./cloud-sql-proxy", "--port 5432", "--address 0.0.0.0", "$CLOUDSQL_INSTANCE_ADDRESS", "--auto-iam-authn", "--private-ip=PRIVATE"]