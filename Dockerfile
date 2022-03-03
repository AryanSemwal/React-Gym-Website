FROM node:10
WORKDIR '/app'
COPY . .
EXPOSE 3000

RUN npm install && npm install -g serve && npm run build
CMD ["serve","-s","build"]
