FROM quay.io/zwcoder/ghost-deploy:latest

RUN git clone https://github.com/Dark-Town/GHOST-RIDER /root/GHOST-RIDER
WORKDIR /root/GHOST-RIDER/
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
