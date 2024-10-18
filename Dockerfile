FROM node
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
RUN mkdir -p /src/styles
RUN chown 10014 /src/styles
USER 10014
CMD npm run devportal-up
