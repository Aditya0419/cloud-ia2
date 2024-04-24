FROM node
WORKDIR /app
COPY . .
ENV MONGO_DB_USERNAME=root
ENV MONGO_DB_PWD=password
RUN npm install
EXPOSE 3000
CMD ["node","app.js"]

