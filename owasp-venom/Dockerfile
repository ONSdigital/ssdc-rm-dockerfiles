FROM ovhcom/venom

VOLUME /workdir/results
VOLUME /workdir/tests

COPY venom_tests.yml /workdir/tests/venom_tests.yml

WORKDIR /workdir

ENV VENOM_OUTPUT_DIR=/workdir/results
ENV VENOM_LIB_DIR=/workdir/tests/lib
ENV VENOM_VERBOSE=1

RUN chmod -R 777 /usr/local/venom

