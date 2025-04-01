#stage 1
FROM node:14.10.0 AS build

WORKDIR /app

COPY . /app

RUN npm install && npm run build

# production stage
FROM nginx

COPY --from=build /app/build /usr/share/nginx/html/

CMD ["nginx","-g","daemon off;"]