# Использовать официальный образ Node.js
FROM node:18-alpine

# Установить рабочую директорию внутри контейнера
WORKDIR /usr/src/app

# Копировать package.json для установки зависимостей
COPY package*.json ./\r

# Установить зависимости (express, socket.io, pg)
RUN npm install

# Копировать весь остальной код (server.js, index.html, style.css и т.д.)
COPY . .

# Открыть порт 3000
EXPOSE 3000

# Запустить приложение
CMD [ "node", "server.js" ]