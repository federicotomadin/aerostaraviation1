# Build stage
FROM --platform=linux/amd64 node:20-alpine AS build

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install all dependencies (including dev dependencies needed for build)
RUN npm ci

# Copy source code
COPY . .

# Build the app
RUN npm run build

# Production stage
FROM --platform=linux/amd64 nginx:alpine

# Copy built app from build stage (Vite builds to 'dist' by default)
COPY --from=build /app/dist /usr/share/nginx/html

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf.bak 2>/dev/null || true

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
