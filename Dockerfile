FROM node:18-bullseye-slim

COPY ./atproto /atproto

WORKDIR /atproto

# intall dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
    make \
    && rm -rf /var/lib/apt/lists/*

RUN yarn install

CMD [ "make", "run-dev-env" ]
