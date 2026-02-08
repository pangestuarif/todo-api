# 1. Gunakan image Node.js versi 18 (lebih baru & stabil) dengan base Alpine agar ukuran kecil
FROM node:18-alpine

# 2. Tentukan folder kerja di dalam container
WORKDIR /app

# 3. Salin file package.json dan package-lock.json (jika ada) ke folder /app
COPY package*.json ./

# 4. Install dependencies (express, dll) berdasarkan package.json
RUN npm install

# 5. Salin seluruh sisa file codingan kamu (termasuk index.js) ke dalam container
COPY . .

# 6. Beritahu Docker bahwa aplikasi akan berjalan di port 3000
EXPOSE 3000

# 7. Perintah untuk menjalankan aplikasi saat container dinyalakan
CMD ["npm", "start"]
