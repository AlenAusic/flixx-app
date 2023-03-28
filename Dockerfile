FROM node:19-alpine

# Set ORIGION environment variable in CapRover
ENV TMDB_API_KEY=${TMDB_API_KEY}

COPY ./package*.json ./build ./
ENV PORT 80
EXPOSE 80

ENTRYPOINT ["node", "index.js"]