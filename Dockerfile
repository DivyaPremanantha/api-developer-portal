FROM node
RUN addgroup app && adduser -S -G app 10001
USER 10001
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
CMD npm run devportal-up
