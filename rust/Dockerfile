ARG ARCH
FROM grauwoelfchen/gentoo-${ARCH}:latest

LABEL maintainer="Yasuhiro Яша Asaka <yasuhiro.asaka@grauwoelfchen.net>"

ARG VERSION
ENV VERSION ${VERSION}

ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH

WORKDIR /tmp

RUN set -eux; \
    \
    emerge -qv net-misc/curl

RUN set -eux; \
    \
    platform="x86_64-unknown-linux-gnu"; \
    url="https://static.rust-lang.org/rustup/dist/${platform}/rustup-init"; \
    curl -sSfLO "$url"; \
    chmod +x rustup-init; \
    \
    ./rustup-init -y --no-modify-path --default-toolchain none; \
    \
    rustup install $VERSION; \
    rustup default $VERSION; \
    rm rustup-init; \
    chmod -R a+w $RUSTUP_HOME $CARGO_HOME; \
    \
    rustup component add rust-src; \
    \
    rustup show; \
    rustup --version; \
    rustc --version; \
    cargo --version; \
    \
    cargo clippy --version; \
    cargo fmt --version

WORKDIR /
CMD ["/bin/bash"]
