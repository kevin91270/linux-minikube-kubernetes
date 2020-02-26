FROM node:latest
RUN git clone https://gitlab.com/_seshat_/front
WORKDIR ./front
RUN npm install
CMD npm run serve