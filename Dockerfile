FROM node:18-alpine AS deps

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install --legacy-peer-deps

FROM node:18-alpine AS builder

WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules
COPY . .

RUN npm run build

ENV NODE_ENV=production
RUN npm ci --only=production --legacy-peer-deps \
    && npm cache clean --force

FROM node:18-alpine AS runner

WORKDIR /app

COPY --from=builder --chown=node:node /app/dist ./dist
COPY --from=builder --chown=node:node /app/node_modules ./node_modules

USER node

CMD ["node", "dist/main.js"]