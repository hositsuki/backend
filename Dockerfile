# backend/Dockerfile
FROM node:20-alpine

WORKDIR /app
COPY package*.json ./
RUN npm install

COPY backend .

# 编译 TypeScript
RUN npm run build

EXPOSE 5000
CMD ["node", "dist/server.js"]
