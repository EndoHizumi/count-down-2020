FROM node

EXPOSE 8080
WORKDIR /usr/local/bin/count-down-2020
RUN npm cache --force clean
COPY package*.json ./
RUN npm install
RUN npm install -g vue
RUN npm install -g http-server
RUN npm update
COPY . .
RUN npm run build
CMD ["http-server", "./dist"]