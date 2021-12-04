/* Выдать в результатах запроса имена всех заказчиков из таблицы Customers и суммарное количество их заказов из таблицы Orders. 
Принять во внимание, что у некоторых заказчиков нет заказов, но они также должны быть выведены в результатах запроса. 
Упорядочить результаты запроса по возрастанию количества заказов. */

SELECT c.ContactName as [Customer Name], COUNT(o.OrderID) AS [Total Orders]
FROM Northwind.Customers as c
LEFT JOIN Northwind.Orders AS o ON o.CustomerID = c.CustomerID
GROUP BY c.ContactName
ORDER BY [Total Orders]