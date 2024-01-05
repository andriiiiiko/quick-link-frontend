FROM node:20.10.0
WORKDIR /app
COPY package.json .
COPY package-lock.json .
RUN npm install
COPY . .
EXPOSE 80
CMD ["npm", "start"]