FROM node:14

WORKDIR /app
COPY ./frontend .
RUN npm install

CMD ["npm", "start"]