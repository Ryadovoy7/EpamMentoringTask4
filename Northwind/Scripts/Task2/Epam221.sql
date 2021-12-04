/* По таблице Orders найти количество заказов с группировкой по годам. 
В результатах запроса надо возвращать две колонки c названиями Year и Total. 
Написать проверочный запрос, который вычисляет количество всех заказов. */

SELECT YEAR(OrderDate) AS [Year], COUNT(*) as Total
FROM Northwind.Orders
GROUP BY YEAR(OrderDate) 

SELECT COUNT(*)
FROM Northwind.Orders