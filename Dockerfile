FROM node
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN chown -R 10014:10014 /app
RUN chown -R 10014:10014 /app/src
RUN mkdir -p /src && chown -R 10014:10014 /app/src/styles
USER 10014
CMD npm run devportal-up
