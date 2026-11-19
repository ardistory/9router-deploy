FROM node:22-slim

RUN npm install -g 9router

EXPOSE 20128

ENV NODE_ENV=production
ENV DATA_DIR=/app/data

# Pastikan direktori data ada (volume akan menimpa isinya saat runtime)
RUN mkdir -p /app/data

# Deklarasikan volume untuk persistensi data
VOLUME /app/data

# Flag --host 0.0.0.0 penting agar 9router listen di semua interface
CMD ["9router", "--host", "0.0.0.0", "--no-browser", "--skip-update"]
