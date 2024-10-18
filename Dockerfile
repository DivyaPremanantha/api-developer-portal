FROM node
USER node
WORKDIR /public
COPY package.json ./
RUN npm install
RUN chown -R 10014:0 /.npm
COPY . .
CMD npm run devportal-up
