FROM node
USER 10014
WORKDIR /public
COPY package.json ./
RUN chown -R 10014:0 /.npm
RUN npm install
COPY . .
CMD npm run devportal-up
