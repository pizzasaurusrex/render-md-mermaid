# FROM debian:9.5-slim
FROM minlag/mermaid-cli:latest

RUN apk update && apk add bash

COPY entrypoint.sh /entrypoint.sh
COPY render-md-mermaid.sh /render-md-mermaid.sh

ENTRYPOINT ["/entrypoint.sh"]
