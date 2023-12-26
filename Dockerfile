FROM node:21-alpine
WORKDIR /app
COPY package*.json .
RUN npm install
ADD . .
EXPOSE 5000
CMD ["npm", "run", "start"]
