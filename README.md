Здесь представлена код, после компиляции которого через интерфейс командной строки  можна преобразовать данные находящиеся в
input.txt в sql запросы для вставки в таблицу Products.
После выполнения программы инсерт запросы хранятся out.sql
Для успешного формирования запросов из входных данных следует запустить программу с двумя аргументами - первый это входные
данные(input.txt или файл с соблюдением подобных условий),
второй выходной файл(в моем примере out.sql)
Результирующий скрипт для инициализации базы данных local, создания таблицы Products и ее заполнения 50 записями находится в  
create.sql.
