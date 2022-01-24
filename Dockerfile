FROM node:16.13

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

#install depedencies
COPY package.json /usr/src/app
RUN npm install

#bundle app src
COPY . /usr/src/app

CMD [ "npm" , "start" ]
