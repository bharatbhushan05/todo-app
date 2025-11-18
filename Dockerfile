FROM node:24-alpine
WORKDIR /app
COPY . .
RUN yarn install && yarn cache clean
CMD ["node", "src/index.js"]
EXPOSE 3000