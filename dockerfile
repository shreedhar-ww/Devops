### STAGE 1: Build ###
FROM node:12.7-alpine AS build
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build --prod

### STAGE 2: Run ###
FROM nginx:1.17.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/src/app/dist/angularapp /usr/share/nginx/html










# FROM node:alpine AS builder

# WORKDIR /app

# COPY . .

# RUN npm install && \
#     npm run build

# FROM nginx:alpine

# COPY --from=builder /app/dist/* /usr/share/nginx/html/

# CMD ng serve --host 0.0.0.0