FROM timbru31/java-node
WORKDIR /public
COPY package.json ./
RUN npm install
COPY . .
ENTRYPOINT ["sh", "startup.sh", "single"]
