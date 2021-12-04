/* Написать запрос, который выводит только недоставленные заказы из таблицы Orders. 
В результатах запроса возвращать для колонки ShippedDate вместо значений NULL строку ‘Not Shipped’ (использовать системную функцию CASЕ). 
Запрос должен возвращать только колонки OrderID и ShippedDate.*/

SELECT OrderID,
CASE
	WHEN ShippedDate IS NULL THEN 'Not Shipped'
	ELSE CONVERT(varchar, ShippedDate, 23)
END AS ShippedDate
FROM Northwind.Orders