FROM archlinux:base-devel-20260308.0.497099 AS builder

ARG TRAEFIK_VERSION
ARG TRAEFIK_TARBALL=traefik_v${TRAEFIK_VERSION}_linux_amd64.tar.gz
ARG GITHUB_URL=https://github.com/traefik/traefik/releases/download

WORKDIR /extract/traefik
RUN curl --silent --show-error --location --output traefik.tar.gz \
  "${GITHUB_URL}/v${TRAEFIK_VERSION}/${TRAEFIK_TARBALL}" \
  && tar xzf traefik.tar.gz

FROM ghcr.io/simons-containers/distroless-glibc:2.43
ARG TRAEFIK_VERSION

COPY --from=builder /extract/traefik/traefik /usr/bin/traefik

ENTRYPOINT ["/usr/bin/traefik"]
CMD ["--configFile=/etc/traefik/traefik.yml"]

LABEL org.opencontainers.image.title="distroless traefik"
LABEL org.opencontainers.image.description="distroless traefik"
LABEL org.opencontainers.image.version="${TRAEFIK_VERSION}"
LABEL org.opencontainers.image.source="https://github.com/simons-containers/distroless-traefik"
LABEL org.opencontainers.image.volumes.config="/etc/traefik"
