FROM docker.n8n.io/n8nio/n8n:latest

USER root
RUN apk add --update python3 py3-pip
USER node
RUN python3 -m pip install --user --break-system-packages pipx

# Add the path of the pipx installation to PATH
ENV PATH="/home/node/.local/bin:$PATH"
