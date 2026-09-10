FROM node:20-alpine AS build

WORKDIR /app

COPY innerpeace-app/package*.json ./

RUN npm i

COPY innerpeace-app/ ./

RUN npm run build

# Stage 2 Run with nginx
FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ['nginx', '-g', 'daemon off;']