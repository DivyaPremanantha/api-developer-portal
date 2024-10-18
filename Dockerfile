FROM timbru31/java-node
USER 10014
WORKDIR /public
COPY package.json ./
RUN npm install
COPY . .
ENTRYPOINT ["sh", "startup.sh", "single"]
