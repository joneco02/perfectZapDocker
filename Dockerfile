FROM node:16-alpine

WORKDIR /usr/app

#  add libraries; sudo so non-root user added downstream can get sudo
RUN apk add --no-cache \
    sudo \
    curl \
    build-base \
    g++ \
    libpng \
    libpng-dev \
    jpeg-dev \
    pango-dev \
    cairo-dev \
    giflib-dev \
    ffmpeg \
    python3 --force-overwrite


RUN apk add gcompat

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
RUN apk add chromium

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 80

CMD ["npm","start"]