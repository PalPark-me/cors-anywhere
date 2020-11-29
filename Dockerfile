FROM node:14.8.0

# Create app directory
WORKDIR /app
COPY package.json ./
RUN yarn install
# add app
COPY . ./

ENV PORT=8080
ENV CORSANYWHERE_WHITELIST=https://palpark.me
CMD ["node", "server.js"]
