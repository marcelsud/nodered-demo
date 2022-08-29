FROM nodered/node-red

COPY data/package.json /data/package.json
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

COPY conf/settings.prd.js /data/settings.js
COPY data/nodes/ /data/nodes
COPY data/flows.json /data/flows.json
