FROM amd64/caddy:builder-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare 

FROM amd64/caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
