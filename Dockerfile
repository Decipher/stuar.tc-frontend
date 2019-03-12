FROM node:11.11.0-alpine

COPY . /app/
WORKDIR /app/

RUN npm install
RUN npm run build

ENV HOST 0.0.0.0
EXPOSE 3000

CMD ["npm", "run", "start"]
