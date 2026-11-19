FROM node:22-slim
RUN npm install -g 9router
EXPOSE 20128
ENV NODE_ENV=production
# Flag --host 0.0.0.0 penting agar 9router listen di semua interface
CMD ["9router", "--host", "0.0.0.0", "--no-browser", "--skip-update"]
