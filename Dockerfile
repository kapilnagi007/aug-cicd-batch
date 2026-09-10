FROM node:20-alpine AS build

WORKDIR /app

COPY package*.json ./

RUN npm i

COPY . .
RUN npm run build

COPY --from=build /app/build usr/share/nginx/html

EXPOSE 80

CMD ['nginx', '-g', 'daemon off;']