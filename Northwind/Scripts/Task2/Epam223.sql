/* По таблице Orders найти количество заказов, сделанных каждым продавцом и для каждого покупателя. 
Необходимо определить это только для заказов, сделанных в 1998 году. */

SELECT o.EmployeeID, o.CustomerID, COUNT(*)
FROM Northwind.Orders as o
WHERE YEAR(o.OrderDate) = 1998
GROUP BY o.EmployeeID, o.CustomerID