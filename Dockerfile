FROM node:12.13.1

ADD . /home/app/docker-test

WORKDIR /home/app/docker-test
ENV NODE_ENV docker_test

RUN npm install -g yarn
RUN yarn

EXPOSE 3000
CMD ["yarn", "start"]