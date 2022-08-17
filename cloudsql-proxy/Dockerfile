FROM eu.gcr.io/cloudsql-docker/gce-proxy:1.31.2-alpine
EXPOSE 5432
USER root
RUN addgroup --gid 1000 cloudsqlproxy && adduser --system --uid 1000 cloudsqlproxy cloudsqlproxy
USER cloudsqlproxy
# CLOUDSQL_INSTANCE_ADDRESS format: <PROJECT>:<CLOUDSQL_INSTANCE_ID>=tcp:<PORT>
CMD ./cloud_sql_proxy -enable_iam_login -instances=$CLOUDSQL_INSTANCE_ADDRESS -ip_address_types=PRIVATE 