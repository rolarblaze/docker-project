FROM node:15

WORKDIR /app

COPY package.json .

RUN npm install 

COPY . /app/

EXPOSE 3000

CMD ["node", "index.js"]