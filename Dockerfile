FROM node:21-alpine
WORKDIR /app
ENV NODE_ENV=development
ENV PORT=5000
ENV URI=http://localhost:3000
ENV MONGO_URI="mongodb+srv://cephasblog:BpdhurfOTjFCYrPc@cluster0.h4ylfks.mongodb.net/?retryWrites=true&w=majority"
ENV JWT_SECRET_KEY=CEPHAS
ENV JWT_EXPIRE=60m
ENV RESET_PASSWORD_EXPIRE=3600000 
ENV SMTP_HOST=smtp.gmail.com
ENV SMTP_PORT=587
ENV EMAIL_USERNAME=example@gmail.com
ENV EMAIL_PASS=your_password
COPY package*.json .
RUN npm install
ADD . .
EXPOSE 5000
CMD ["npm", "run", "start"]
