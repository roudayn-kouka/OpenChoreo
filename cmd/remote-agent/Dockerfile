# Use distroless for minimal secure image
FROM gcr.io/distroless/static:nonroot@sha256:aafe993665bf6200db38a02c11a9351e782a84b6a45e7f33b6695638c88e3931

ARG TARGETOS
ARG TARGETARCH

LABEL org.opencontainers.image.source="https://github.com/openchoreo/openchoreo"
LABEL org.opencontainers.image.description="OpenChoreo remote-agent - tunnels workload dependencies to a developer's machine for local development"
LABEL org.opencontainers.image.license="Apache-2.0"

# Set working directory in the container
WORKDIR /

# Copy the pre-built binary produced by the Makefile into the image
COPY bin/dist/${TARGETOS}/${TARGETARCH}/remote-agent .

# Use non-root user for security (65532 is 'nonroot' user in distroless)
USER 65532:65532

# Entrypoint: run the binary
ENTRYPOINT ["/remote-agent"]
