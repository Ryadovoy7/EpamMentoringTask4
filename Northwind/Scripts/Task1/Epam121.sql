/* Выбрать из таблицы Customers всех заказчиков, проживающих в USA и Canada. 
Запрос сделать с только помощью оператора IN. 
Возвращать колонки с именем пользователя и названием страны в результатах запроса. 
Упорядочить результаты запроса по имени заказчиков и по месту проживания.*/

SELECT c.ContactName as ContactName, c.Country as Country
FROM Northwind.Customers as c
WHERE c.Country IN ('USA', 'CANADA')
ORDER BY ContactName, Country