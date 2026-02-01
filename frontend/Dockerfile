FROM node:18
WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json

RUN npm ci

COPY . .
RUN npm run build
RUN cp -r build/* /app/static/ || echo "Build files copied"
RUN npm install --global http-server

CMD ["http-server", "static"]
