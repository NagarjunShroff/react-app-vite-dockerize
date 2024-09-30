FROM node

WORKDIR /app

COPY package.json .
COPY yarn.lock .
RUN npm i yarn

RUN yarn install
COPY . .

EXPOSE 5000

CMD ["yarn", "run", "dev"]