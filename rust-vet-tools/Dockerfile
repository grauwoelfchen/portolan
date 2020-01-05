ARG BASE
FROM grauwoelfchen/rust:${BASE}

LABEL maintainer="Yasuhiro Яша Asaka <yasuhiro.asaka@grauwoelfchen.net>"

WORKDIR /tmp

RUN set -eux; \
    \
    accept_keywords=/etc/portage/package.accept_keywords; \
    mkdir -p $accept_keywords; \
    echo "dev-util/kcov ~amd64" >> $accept_keywords/kcov; \
    emerge -qv dev-util/kcov \
               sys-libs/binutils-libs; \
    \
    rustup self update; \
    rustup component add clippy rustfmt --toolchain stable; \
    \
    rustup --version; \
    rustup show; \
    rustc --version; \
    cargo --version; \
    \
    kcov --version; \
    cargo clippy --version; \
    cargo fmt --version

WORKDIR /
CMD ["/bin/bash"]
