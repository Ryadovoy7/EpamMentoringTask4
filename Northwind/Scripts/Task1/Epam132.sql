/* Выбрать всех заказчиков из таблицы Customers, у которых название страны начинается на буквы из диапазона b и g. 
Использовать оператор BETWEEN. Проверить, что в результаты запроса попадает Germany. 
Запрос должен возвращать только колонки CustomerID и Country и отсортирован по Country. */

SELECT CustomerID, Country
FROM Northwind.Customers
WHERE lower(LEFT(Country, 1)) BETWEEN 'b' AND 'g'
ORDER BY Country