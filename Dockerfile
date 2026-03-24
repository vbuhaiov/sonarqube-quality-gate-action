FROM node:16-alpine

COPY . .
RUN npm ci && npm install -g typescript@5.9.3 && tsc
RUN tsc

ENTRYPOINT ["node", "/src/index.js"]
