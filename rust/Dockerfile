FROM rust:alpine

# Get the latest binary
RUN wget -O - https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-musl.gz \
  | gunzip -c - > /usr/local/bin/rust-analyzer \
  && chmod +x /usr/local/bin/rust-analyzer

# Ensure required rust components are present
RUN rustup component add rust-src rustfmt

ENTRYPOINT ["/usr/local/bin/rust-analyzer"]
