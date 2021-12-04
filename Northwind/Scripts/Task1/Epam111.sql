/* Выбрать в таблице Orders заказы, которые были доставлены 
после 6 мая 1998 года (колонка ShippedDate) включительно и которые доставлены с ShipVia >= 2. 
Запрос должен возвращать только колонки OrderID, ShippedDate и ShipVia.

Внимание: скрипт устанавливает формат времени ydm
*/

SELECT OrderID, ShippedDate, ShipVia
FROM Northwind.Orders
WHERE ShippedDate >= CONVERT(datetime,'1998-06-05') AND ShipVia >= 2