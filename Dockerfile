FROM node:12-slim
WORKDIR /src/app
COPY package*.json ./
RUN npm install -g @angular/cli
RUN npm install
COPY . .
RUN npm run build --prod
EXPOSE 8080
CMD [ "npx", "http-server", "dist/webiso" ]