/* По таблице Orders найти количество заказов, которые еще не были доставлены (т.е. в колонке ShippedDate нет значения даты доставки). 
Использовать при этом запросе только оператор COUNT. 
Не использовать предложения WHERE и GROUP. */

SELECT COUNT(case when ShippedDate IS NULL then 1 else NULL end) AS UnshippedOrders
FROM Northwind.Orders
