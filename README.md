[![Current Version](https://raw.githubusercontent.com/simons-containers/distroless-traefik/badges/.badges/main/release.svg)](https://github.com/simons-containers/distroless-traefik/pkgs/container/distroless-traefik)
[![Tags](https://raw.githubusercontent.com/simons-containers/distroless-traefik/badges/.badges/main/tags.svg)](https://github.com/simons-containers/distroless-traefik/pkgs/container/distroless-traefik)  
![Current Size](https://raw.githubusercontent.com/simons-containers/distroless-traefik/badges/.badges/main/size.svg)
![Wasted Size](https://raw.githubusercontent.com/simons-containers/distroless-traefik/badges/.badges/main/wasted.svg)
![Efficiency](https://raw.githubusercontent.com/simons-containers/distroless-traefik/badges/.badges/main/efficiency.svg)  
![Critical](https://raw.githubusercontent.com/simons-containers/distroless-traefik/badges/.badges/main/critical.svg)
![High](https://raw.githubusercontent.com/simons-containers/distroless-traefik/badges/.badges/main/high.svg)
![Medium](https://raw.githubusercontent.com/simons-containers/distroless-traefik/badges/.badges/main/medium.svg)
![Low](https://raw.githubusercontent.com/simons-containers/distroless-traefik/badges/.badges/main/low.svg)  
[![status](https://github.com/simons-containers/distroless-traefik/actions/workflows/deploy.yaml/badge.svg)](https://github.com/simons-containers/distroless-traefik/actions/workflows/deploy.yaml)
[![status](https://github.com/simons-containers/distroless-traefik/actions/workflows/update-versions.yaml/badge.svg)](https://github.com/simons-containers/distroless-traefik/actions/workflows/update-versions.yaml)

# Distroless Traefik container

Bare-bones distroless Traefik container image with `glibc`, `tzdata`, and Mozilla CA certificates.

## Running

Mount configuration at `/etc/traefik/traefik.yml`

Example:

```bash
docker run -it --rm -v ./config:/etc/traefik \
  ghcr.io/simons-containers/distroless-traefik:latest
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
