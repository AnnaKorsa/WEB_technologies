-- 2. Создать файл my.sql, в котором должна создаваться таблица с информацией об одногруппниках. 
-- В таблице должно быть четыре поля: id, name, age, address. Все поля в таблице обязательны для заполнения.

-- Необходимо добавить 5-10 одногруппников в данную таблицу.

-- Необходимо написать запрос на получение имен всех одногруппников (только имен, без всего остального), 
-- которые живут в Москве и их возраст находится в диапазоне [18, 30) лет.

-- Создание таблицы
CREATE TABLE myClassmates (
  Id INTEGER PRIMARY KEY,
  name    TEXT NOT NULL,
  age     TEXT NOT NULL,
  address TEXT NOT NULL
);
-- Ввод данных
INSERT INTO myClassmates VALUES (1, 'Анна', '31', 'г. Москва, ул. Ленина 1');
INSERT INTO myClassmates VALUES (2, 'Дмитрий', '35', 'г. Санкт-Петербург, ул. Космонавтов 9');
INSERT INTO myClassmates VALUES (3, 'Екатерина', '22', 'г. Москва, ул. Набереженая 12');
INSERT INTO myClassmates VALUES (4, 'Инна', '41', 'г. Минск, ул. Якуба Коласа 25');
INSERT INTO myClassmates VALUES (5, 'Сергей', '28', 'г. Москва, ул. Пушкина 32');


-- Запрос
SELECT name FROM myClassmates WHERE address like '%Москва%' and age >= 18 and age < 30;