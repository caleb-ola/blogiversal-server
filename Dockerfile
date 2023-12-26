FROM node:21-alpine
WORKDIR /app
COPY package*.json .
RUN npm install
ADD . .
EXPOSE 4000
CMD ["npm", "run", "start"]
