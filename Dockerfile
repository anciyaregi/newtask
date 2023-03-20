FROM node:14.18.1-alpine as build
WORKDIR /app
COPY . /app
RUN npm install
RUN npm run build --prod
EXPOSE 9000
CMD ["npm","start"]















































# FROM nginx:alpine
# COPY --from=build /app/dist/user-details /usr/share/nginx/html
















# FROM node:14.18.1-alpine as build
# RUN mkdir -p /usr/src/app
# WORKDIR /usr/src/app
# COPY package.json /usr/src/app
# RUN npm install
# COPY . /usr/src/app



# FROM nginx:latest
# COPY --from=build /usr/src/app/dist/user-details /usr/share/nginx/html
# EXPOSE 4200
# RUN ["npm","start"]

#RUN npm run build --prod 

#FROM nginx:alpine
#COPY ./ /usr/share/nginx/html
#COPY --from=build /app/dist/user-details /usr/share/nginx/html
#EXPOSE 80


