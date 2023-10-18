FROM node:19-alpine3.16

COPY .nirc /root/.nirc

RUN npm i -g @antfu/ni
RUN npm i -g pnpm
RUN npm config set registry https://registry.npmmirror.com
RUN npm config set fetch-retry-maxtimeout 60000
