FROM node:16-alpine

WORKDIR /ws-scrcpy

RUN npm install -g node-gyp
RUN apk update
RUN apk add android-tools git build-base
RUN git clone https://github.com/NetrisTV/ws-scrcpy.git .
RUN npm install
RUN npm run dist

EXPOSE 8000

CMD ["node","dist/index.js"]
