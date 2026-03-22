# Distroless Traefik container

Bare-bones distroless Traefik container image with `glibc`, `tzdata`, and Mozilla CA certificates.

## Running

Mount configuration at `/etc/traefik/traefik.yml`

Example:

```bash
docker run -it --rm -v ./config:/etc/traefik \
  ghcr.io/simons-containers/distroless-traefik:latest
```

## Building

| Arg | Description |
|---|---|
| `TRAEFIK_VERSION` | Version of Traefik to use

Build container using build-args from versions.yaml:

```bash
docker build -t \
  distroless-traefik:$(yq -r .traefik versions.yaml) \
  $(yq -r 'to_entries | .[] | "--build-arg \(.key | ascii_upcase)_VERSION=\(.value)"' versions.yaml) -f Containerfile .
```

## License

Repository contents (e.g., `Containerfile`, build scripts, and configuration) are licensed under the **MIT License**.

Software included in built container images (such as **Traefik**, **glibc**, **tzdata**, and **Mozilla CA Certificates**) are provided under their respective upstream licenses and are not covered by the MIT license for this repository.

## Acknowledgements

This project depends on a number of upstream components and data sources:

- **Traefik** - Traefik (pronounced traffic) is a modern HTTP reverse proxy and load balancer that makes deploying microservices easy.  
  https://traefik.io

- **glibc** – GNU C Library providing the standard C runtime and POSIX interfaces used by most Linux systems.  
  https://www.gnu.org/software/libc/

- **tzdata** – The IANA Time Zone Database, which provides the canonical global timezone definitions used for correct time handling.  
  https://www.iana.org/time-zones

- **Mozilla CA Certificates** – The curated set of trusted root Certificate Authorities maintained by Mozilla and used by many systems for TLS verification.  
  https://wiki.mozilla.org/CA
