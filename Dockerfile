# استخدم Node.js 20
FROM node:20-alpine

# أنشئ مجلد العمل
WORKDIR /app

# انسخ package.json و package-lock.json
COPY package.json package-lock.json* ./

# ثبت الاعتماديات
RUN npm install --production

# انسخ بقية الملفات
COPY . .

# افتح البورت
EXPOSE 8000

# أمر التشغيل
CMD ["node", "index.js"]
