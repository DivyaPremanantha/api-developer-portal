FROM node
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN mkdir -p /app && chown -R 10014:10014 /app
RUN mkdir -p /src && chown -R 10014:10014 /app/src
RUN mkdir -p /src && chown -R 10014:10014 /app/src/styles
USER 10014
CMD npm run devportal-up
