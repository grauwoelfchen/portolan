FROM gentoo/portage:latest as portage
FROM gentoo/stage3-amd64-nomultilib:latest

LABEL maintainer="Yasuhiro Asaka <yasuhiro.asaka@grauwoelfchen.net>"

COPY --from=portage /usr/portage /usr/portage

ENV RUSTUP_HOME=/usr/local/rustup \
    CARGO_HOME=/usr/local/cargo \
    PATH=/usr/local/cargo/bin:$PATH

WORKDIR /tmp
RUN set -eux && \
    \
    emerge --sync && \
    eselect news read --quiet new >/dev/null 2>&1 && \
    emerge -qv net-misc/curl && \
    \
    platform="x86_64-unknown-linux-gnu" && \
    url="https://static.rust-lang.org/rustup/dist/${platform}/rustup-init" && \
    curl -sSfLO "$url" && \
    chmod +x rustup-init && \
    ./rustup-init -y --no-modify-path --default-toolchain stable && \
    rm rustup-init && \
    chmod -R a+w $RUSTUP_HOME $CARGO_HOME && \
    rustup component add rust-src && \
    \
    rustup --version && \
    rustc --version && \
    cargo --version

WORKDIR /
CMD ["/bin/bash"]
