# Stage 1: Build
FROM node:18-alpine AS builder

WORKDIR /app

# Install dependencies first to leverage Docker cache
COPY package*.json ./
RUN npm install

# Copy the rest of the source
COPY . .

# Build the Medusa backend (if you have any build steps like transpilation)
# Not required for Medusa, but safe to keep if you customize later
# RUN npm run build

# Stage 2: Production
FROM node:18-alpine

WORKDIR /app

# Copy only what's necessary from builder
COPY --from=builder /app ./

# Expose Medusa default port
EXPOSE 9000

# Start Medusa
CMD ["npx", "medusa", "start"]
