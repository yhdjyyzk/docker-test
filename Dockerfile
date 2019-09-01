FROM node:10.15.0

ADD . /home/app/docker-test

WORKDIR /home/app/docker-test
ENV NODE_ENV docker_test

RUN npm install -g yarn
RUN yarn

EXPOSE 3000
CMD ["yarn", "start"]