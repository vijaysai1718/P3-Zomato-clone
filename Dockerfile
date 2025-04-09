FROM node:18
#Set the working directroy to app
WORKDIR /app
# copying the package realted files to the current directory i.e app
COPY package*.json .
# Installing the dependencies 
RUN npm Install
# Copying all files to the directory
COPY . .
RUN npm build
CMD ["npm", "start"]




