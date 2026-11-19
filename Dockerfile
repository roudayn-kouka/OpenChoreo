# Use distroless as minimal base image to package the manager binary
# Refer to https://github.com/GoogleContainerTools/distroless for more details
FROM gcr.io/distroless/static:nonroot@sha256:aafe993665bf6200db38a02c11a9351e782a84b6a45e7f33b6695638c88e3931

ARG TARGETOS
ARG TARGETARCH

LABEL org.opencontainers.image.source="https://github.com/openchoreo/openchoreo"
LABEL org.opencontainers.image.description="Kubernetes Controller for Choreo"
LABEL org.opencontainers.image.license="Apache-2.0"

WORKDIR /
COPY bin/dist/${TARGETOS}/${TARGETARCH}/manager .
USER 65532:65532

ENTRYPOINT ["/manager"]
