FROM node
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
USER 10014
RUN chown -R 10014:10014 /app
CMD npm run devportal-up
