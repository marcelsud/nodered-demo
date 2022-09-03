FROM nodered/node-red

COPY data/package.json /data/package.json
RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

COPY conf/settings.js /data/settings.js
COPY data/flows_encrypted.json /data/flows_encrypted.json
