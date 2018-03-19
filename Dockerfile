FROM hub.c.163.com/nce2/nodejs:0.12.2

# Create app directory
RUN mkdir /Service
WORKDIR /Service

# Bundle app source
COPY . /Service
RUN npm install

EXPOSE 8888
CMD [ "npm", "start" ]
