FROM timbru31/java-node
USER root
WORKDIR /public
COPY package.json ./
RUN npm install
COPY . .
ENTRYPOINT ["sh", "startup.sh", "single"]
