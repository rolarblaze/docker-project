FROM node:15

WORKDIR /app

COPY package.json .

RUN npm install 

COPY . /app/

ARG NODE_ENV
RUN if [ "$NODE_ENV" = "development" ]; \
        then npm install; \
        else npm install --only=production; \
        fi
ENV PORT 3000

EXPOSE $PORT

CMD ["node", "index.js"]