# Практическая работа: Дополнительные возможности Docker
---

Цель работы — изучение дополнительных возможностей Docker для управления жизненным циклом контейнеров, мониторинга их состояния и оптимизации использования системных ресурсов. В ходе работы мы рассмотрим такие аспекты, как логирование контейнеров, мониторинг их состояния, настройка ограничений по ресурсам, экспорт и импорт контейнеров.

---

## Архитектура
* Docker - контейнеризация приложений
* Docker Logs - сбор логов контейнеров
* Docker Stats - мониторинг потребления ресурсов контейнерами
* Ограничение ресурсов - CPU и Memory для контейнеров

---

## Основные команды
1. Вывод логов контейнера в файл
Для сохранения логов контейнера в файл:
```yaml
docker logs <container_name> > /tmp/container_logs.txt
```

2. Проверка docker-stats
Для просмотра статистики использования ресурсов контейнером:
```yaml
docker stats <container_name>
```

3. Ограничение контейнера по CPU и Memory
Запуск контейнера с ограничением по памяти и CPU:
```yaml
docker run -d --name practice-limited --memory=256m --cpus=0.5 practice-image:1.0 60
```

4. Сохранение docker-контейнера в tar
Для экспорта контейнера в архив tar:
```yaml
docker export <container_name> > /tmp/container_export.tar
```

5. Импорт контейнера из tar
Для импорта контейнера из архива:
```yaml
docker import /tmp/container_export.tar restored-image
```

## Запуск проекта
1. Сначала создайте директорию для проекта:
```yaml
mkdir docker-practice
cd docker-practice
```
2. Создайте Dockerfile и entrypoint.sh с содержимым, представленным в учебном материале.
3. Сборка образа:
```yaml
docker build -t practice-image:1.0 .
```
---

# Выполнение работы:

## Вывод логов контейнера в файл

<img width="939" height="448" alt="image" src="https://github.com/user-attachments/assets/8ecc1d0d-51e1-49a8-98b1-4ade8a6d7a1e" />

## Просмотр статистики контейнера (docker stats)

<img width="1142" height="148" alt="image" src="https://github.com/user-attachments/assets/f7c18f5a-4caf-499d-a8bb-2ddacf749132" />

## Ограничение ресурсов

<img width="1080" height="289" alt="image" src="https://github.com/user-attachments/assets/4c1ac40b-f4f0-4325-9802-b720b8d05db9" />

## Экспорт контейнера в tar  

<img width="803" height="244" alt="image" src="https://github.com/user-attachments/assets/32e1432f-3cea-462a-9d3e-b90439665a97" />

## Импорт контейнера из tar

<img width="946" height="341" alt="image" src="https://github.com/user-attachments/assets/61881b07-5eda-44f4-a13a-18d554b9ba65" />
