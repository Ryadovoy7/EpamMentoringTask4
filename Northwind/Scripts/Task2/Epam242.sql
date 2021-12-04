-- Выдать всех продавцов, которые имеют более 150 заказов. Использовать вложенный SELECT.

SELECT e.EmployeeID
FROM Northwind.Employees AS e
WHERE (SELECT COUNT(*) FROM Northwind.Orders AS o WHERE o.EmployeeID = e.EmployeeID) > 150