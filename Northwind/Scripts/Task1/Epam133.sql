/* Выбрать всех заказчиков из таблицы Customers,
у которых название страны начинается на буквы из диапазона b и g, 
не используя оператор BETWEEN. */


SELECT CustomerID, Country
FROM Northwind.Customers
WHERE lower(Country) LIKE '[b-g]%'
ORDER BY Country