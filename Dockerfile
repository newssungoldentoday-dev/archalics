# ============================================
# Archa-1.0 - Dockerfile
# Baguio City 2026
# Powered By Archa License Bot v1.0
# Website: https://newssungoldentoday-dev.github.io/archalics/
# ============================================

# Stage 1: Build Go
FROM golang:1.21-alpine AS go-builder

LABEL project="archalics"
LABEL version="v1.0.0"
LABEL license="Archa-1.0"
LABEL author="Rogge Ramos"
LABEL location="Baguio City 2026"
LABEL bot="archalics-bot@v1"
LABEL website="https://newssungoldentoday-dev.github.io/archalics/"

WORKDIR /app

# Copy go files
COPY License-Code/ ./License-Code/
COPY Settings/ ./Settings/
COPY Config/ ./Config/
COPY go.mod ./
COPY go.sum ./

# Build Go binaries
RUN mkdir -p /app/bin && \
    go build -o /app/bin/license-conf ./License-Code/license-code-conf.go && \
    go build -o /app/bin/settings ./Settings/config.go && \
    go build -o /app/bin/config ./Config/config.go

# Stage 2: Build C/C++
FROM gcc:latest AS c-builder
WORKDIR /app
COPY Settings/ ./Settings/
RUN mkdir -p /app/bin && \
    gcc Settings/code.c -o /app/bin/code || echo "C build skip" && \
    g++ Settings/jobs.cpp -o /app/bin/jobs || echo "C++ build skip"

# Stage 3: Final Image
FROM alpine:latest

RUN apk add --no-cache ca-certificates tzdata

WORKDIR /app

# Copy binaries from builders
COPY --from=go-builder /app/bin/ ./bin/
COPY --from=c-builder /app/bin/ ./bin/

# Copy license and docs
COPY LICENSE ./LICENSE
COPY README.md ./README.md
COPY License-Code/ ./License-Code/
COPY Settings/ ./Settings/
COPY Config/ ./Config/

# Environment - Archa-1.0
ENV ARCHA_LICENSE="Archa-1.0"
ENV ARCHA_VERSION="v1.0.0"
ENV ARCHA_PROJECT="archalics"
ENV ARCHA_LOCATION="Baguio City 2026"
ENV ARCHA_BOT="archalics-bot@v1"
ENV ARCHA_WEBSITE="https://newssungoldentoday-dev.github.io/archalics/"
ENV TZ="Asia/Manila"

# Expose port
EXPOSE 8080

# Info
RUN echo "============================================" && \
    echo " archalics - Archa-1.0" && \
    echo " Version: v1.0.0" && \
    echo " Baguio City 2026" && \
    echo " Powered By archalics-bot@v1" && \
    echo " Website: https://newssungoldentoday-dev.github.io/archalics/" && \
    echo "============================================"

# Default command
CMD ["sh", "-c", "cat LICENSE && echo '' && ./bin/license-conf || echo 'Archa-1.0 Running...' && sleep infinity"]
