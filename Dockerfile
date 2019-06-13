FROM alpine:3.8
RUN apk add --no-cache poppler-utils=0.56.0-r1

##
## Image Metadata
##
ARG build_date
ARG version
ARG vcs_ref
LABEL maintainer="CardboardCI" \
    \
    org.label-schema.schema-version="1.0" \
    \
    org.label-schema.name="pdftools" \
    org.label-schema.version="${version}" \
    org.label-schema.build-date="${build_date}" \
    org.label-schema.release=="CardboardCI version:${version} build-date:${build_date}" \
    org.label-schema.vendor="cardboardci" \
    org.label-schema.architecture="amd64" \
    \
    org.label-schema.summary="PDF CLIs" \
    org.label-schema.description="Command line tools for manipulating pdfs." \
    \
    org.label-schema.url="https://gitlab.com/cardboardci/images/pdftools" \
    org.label-schema.changelog-url="https://gitlab.com/cardboardci/images/pdftools/releases" \
    org.label-schema.authoritative-source-url="https://cloud.docker.com/u/cardboardci/repository/docker/cardboardci/pdftools" \
    org.label-schema.distribution-scope="public" \
    org.label-schema.vcs-type="git" \
    org.label-schema.vcs-url="https://gitlab.com/cardboardci/images/pdftools" \
    org.label-schema.vcs-ref="${vcs_ref}" \