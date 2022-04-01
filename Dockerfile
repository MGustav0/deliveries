FROM node:16.14.2

WORKDIR /usr/src/app

RUN npm i -g typescript

COPY . .

RUN yarn install --only=development && \
  yarn build && \
  yarn install --production=true # reduce image size

CMD ["node", "dist/src/main"]
