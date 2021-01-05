ARG BASE
FROM grauwoelfchen/rust:${BASE}

LABEL maintainer="Yasuhiro Яша Asaka <yasuhiro.asaka@grauwoelfchen.net>"

ENV PATH="/usr/local/bin:${PATH}"

WORKDIR /tmp

COPY setup-kcov.sh .
COPY setup-grcov.sh .

RUN set -eux; \
    emerge -qv \
      dev-libs/elfutils \
      dev-util/cmake \
      sys-libs/binutils-libs; \
    \
    sh setup-kcov.sh; \
    sh setup-grcov.sh; \
    \
    rustup self update; \
    \
    rustup --version; \
    rustup show; \
    rustc --version; \
    cargo --version; \
    \
    cargo clippy --version; \
    cargo fmt --version; \
    \
    kcov --version; \
    grcov --version

WORKDIR /
CMD ["/bin/bash"]
