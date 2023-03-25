FROM node:16.14.2-alpine    

WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package.json ./
COPY package-lock.json ./

RUN npm ci
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

# ENV PORT=8000
EXPOSE 8000
CMD [ "npm", "run","start:dev" ]