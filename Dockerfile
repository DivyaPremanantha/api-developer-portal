FROM node
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
USER 10014
CMD npm run devportal-up
