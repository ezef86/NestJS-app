FROM node:23-bookworm-slim AS deps

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install --legacy-peer-deps

FROM node:23-bookworm-slim AS builder

WORKDIR /app

COPY --from=deps /app/node_modules ./node_modules
COPY . .

RUN npm run build

ENV NODE_ENV=production
RUN npm ci --only=production --legacy-peer-deps \
    && npm cache clean --force

FROM node:23-bookworm-slim AS runner

WORKDIR /app

COPY --from=builder --chown=node:node /app/dist ./dist
COPY --from=builder --chown=node:node /app/node_modules ./node_modules

USER node

CMD ["node", "dist/main.js"]