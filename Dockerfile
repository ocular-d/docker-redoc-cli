# ---- Base Node ----
FROM node:lts-alpine3.17
LABEL maintainer "Sven<sven@ocular-d.tech>"
ENV APP_VERSION=0.13.20

# hadolint ignore=DL3018
RUN mkdir -p /app \
    && chown -R node:node /app \
    && apk add --no-cache bash \
    && npm install -g redoc-cli@${APP_VERSION} \
    && npm cache clean --force

USER node
WORKDIR /app

#COPY --chown=node:node package.json /app/package.json

#RUN npm install \
#    && npm cache clean --force

#ENTRYPOINT [ "bash" ]
ENTRYPOINT ["redoc-cli"]
CMD []
