FROM owasp/modsecurity:3.0.7

# Install ngx_http_headers_more_filter_module (required to modify "Server" attribute in RH UI response headers)
RUN apt-get update && \
    apt-get install wget && \
    apt-get -y install gcc &&                                                                     `# C compiler needed to run nginx configuration for module install` \
    apt-get -y install make &&                                                                    `# Used to configure modules as part of nginx build` \
    wget https://github.com/openresty/headers-more-nginx-module/archive/refs/tags/v0.34.tar.gz && `# Approved 3rd party nginx module to use module https://www.nginx.com/resources/wiki/modules/ ` \
    tar -xzvf v0.34.tar.gz && \
    wget https://nginx.org/download/nginx-1.20.2.tar.gz &&                                        `# To add the module, we need the nginx binary to run configuration` \
    tar -xzvf nginx-1.20.2.tar.gz && \
    cd nginx-1.20.2 && \
    ./configure --without-http_rewrite_module                                                     `# Run the nginx configuration to add the module` \
                --without-http_gzip_module  \
                --with-compat  \
                --add-dynamic-module=../headers-more-nginx-module-0.34/ && \
    make modules && \
    cp objs/ngx_http_headers_more_filter_module.so /etc/nginx/modules/                            `# Move the module to allow it to be used by nginx.conf`
    #nginx -s reload