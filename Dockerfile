FROM timbru31/java-node
USER 10014
WORKDIR /public
COPY package.json ./
RUN npm install
RUN chown -R 10014:0 /.npm
COPY . .
ENTRYPOINT ["sh", "startup.sh", "single"]
