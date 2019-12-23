ARG STAGE
FROM gentoo/portage:latest as portage
FROM gentoo/${STAGE}:latest

LABEL maintainer="Yasuhiro Яша Asaka <yasuhiro.asaka@grauwoelfchen.net>"

COPY --from=portage /var/db/repos/gentoo /var/db/repos/gentoo

WORKDIR /
RUN set -eux; \
    \
    eselect news read --quiet new >/dev/null 2>&1; \
    emerge --info

CMD ["/bin/bash"]
