## Локальный запуск проекта
***
### Нужно установить
1) docker + docker-compose
### Настройка
1) Создать новый файл `./docker/database.env`
2) Скопировать содержимое из `./docker/database.env.example`
3) Настроить на свое усмотрение
### Запуск
1) `docker-compose up -d --build`
2) После сборки открыть https://0.0.0.0:8765