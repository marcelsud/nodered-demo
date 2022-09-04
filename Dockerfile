FROM node:lts-alpine

WORKDIR /data

COPY data/package.json .

RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

COPY conf/settings.js .
COPY data/flows_encrypted.json .

CMD [ "npx", "node-red", "-u", "/data" ]