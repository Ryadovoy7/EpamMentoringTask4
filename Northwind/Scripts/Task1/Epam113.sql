/* 
Выбрать в таблице Orders заказы, которые были доставлены после 6 мая 1998 года (ShippedDate) 
не включая эту дату или которые еще не доставлены. 
В запросе должны возвращаться только колонки OrderID (переименовать в Order Number) и ShippedDate (переименовать в Shipped Date). 
В результатах запроса возвращать для колонки ShippedDate вместо значений NULL строку ‘Not Shipped’, 
для остальных значений возвращать дату в формате по умолчанию.
*/
SELECT OrderID, 
CASE
	WHEN ShippedDate IS NULL THEN 'Not Shipped'
	ELSE CONVERT(varchar, ShippedDate, 23)
END AS ShippedDate
FROM Northwind.Orders
WHERE ShippedDate > '1998-06-05' OR ShippedDate IS NULL