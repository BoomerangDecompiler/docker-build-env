FROM ceeac/boomerang-build-env:base

RUN apt-get -y update && \
    apt-get install -y --no-install-recommends \
    clang-6.0

ENV CC  /usr/bin/clang-6.0
ENV CXX /usr/bin/clang++-6.0
