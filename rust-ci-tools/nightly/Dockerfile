FROM grauwoelfchen/rust:nightly

MAINTAINER Yasuhiro Asaka <yasuhiro.asaka@grauwoelfchen.net>

RUN set -eux; \
    \
    echo "=dev-util/kcov-34 ~amd64" >> /etc/portage/package.accept_keywords; \
    emerge -qv dev-util/kcov; \
    \
    rustup component add rustfmt-preview --toolchain nightly; \
    cargo +nightly install clippy; \
    \
    rustup --version; \
    rustc --version; \
    cargo --version; \
    \
    kcov --version; \
    cargo fmt --version; \
    cargo clippy --version;
