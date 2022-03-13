# ---- Base Node ----
FROM node:lts-alpine3.15
LABEL maintainer "Sven<sven@ocular-d.tech>"

# hadolint ignore=DL3018
RUN mkdir -p /app \
    && chown -R node:node /app

USER node
WORKDIR /app

COPY --chown=node:node package.json /app/package.json

RUN npm install \
    && npm cache clean --force

ENTRYPOINT ["./node_modules/.bin/redoc-cli"]
CMD []
