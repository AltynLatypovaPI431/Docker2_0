# Используется базовый образ на основе Alpine Linux для минимизации размера
FROM alpine:3.18

# Установка необходимых утилит для работы практики
RUN apk add --no-cache \
    bash \
    curl \
    htop \
    procps

# Создание пользователя без привилегий администратора для повышения безопасности
RUN addgroup -g 1000 appuser && \
    adduser -D -u 1000 -G appuser appuser

# Установка рабочей директории
WORKDIR /home/appuser

# Копирование скрипта логирования в контейнер
COPY --chown=appuser:appuser entrypoint.sh /home/appuser/

# Предоставление прав на выполнение скрипта
RUN chmod +x /home/appuser/entrypoint.sh

# Переключение на непривилегированного пользователя
USER appuser

# Точка входа контейнера - выполняет логирование и мониторинг
ENTRYPOINT ["/home/appuser/entrypoint.sh"]

# Значение по умолчанию - время работы в секундах
CMD ["60"]
