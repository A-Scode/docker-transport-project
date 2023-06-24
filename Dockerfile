FROM node:18-alipine

WORKDIR /app

COPY ./package*.json ./

RUN npm i

COPY . .

EXPOSE 5173

CMD ["npm" , "run"  , "dev" , "--", "--host"]