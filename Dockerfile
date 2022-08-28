FROM nodered/node-red AS dev

COPY package.json .
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production
COPY conf/settings.dev.js /data/settings.js

FROM nodered/node-red AS release

COPY nodes/* /data/nodes
COPY conf/settings.prd.js /data/settings.js
COPY flows.json /data/flows.json
