FROM node:19.9.0

COPY .nirc /root/.nirc
COPY .npmrc /root/.npmrc

RUN npm i -g @antfu/ni
RUN npm i -g pnpm
RUN npm config set registry https://registry.npmmirror.com
RUN npm config set fetch-retry-maxtimeout 180000
RUN npm config set fetch-retries 10
