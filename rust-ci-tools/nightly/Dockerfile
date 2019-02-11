FROM grauwoelfchen/rust:nightly

LABEL maintainer="Yasuhiro Asaka <yasuhiro.asaka@grauwoelfchen.net>"

RUN set -eux && \
    \
    accept_keywords=/etc/portage/package.accept_keywords && \
    mkdir -p $accept_keywords && \
    echo "dev-util/kcov ~amd64" >> $accept_keywords/kcov && \
    emerge -qv sys-libs/binutils-libs \
               dev-util/kcov && \
    \
    rustup component add rustfmt clippy --toolchain nightly && \
    \
    rustup --version && \
    rustc --version && \
    cargo --version && \
    \
    kcov --version && \
    cargo fmt --version && \
    cargo clippy --version

WORKDIR /
CMD ["/bin/bash"]
