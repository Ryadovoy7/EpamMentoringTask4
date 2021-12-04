-- По таблице Employees найти для каждого продавца его руководителя.
-- что здесь требуется?

SELECT EmployeeID, ReportsTo
FROM Northwind.Employees

-- допустим имя...

SELECT e1.EmployeeID AS SellerID, 
CONCAT(e1.LastName, e1.FirstName) AS Seller, 
e1.ReportsTo AS SuperiorID, 
CONCAT(e2.LastName, e2.FirstName) as Superior
FROM Northwind.Employees AS e1, Northwind.Employees AS e2
WHERE e1.ReportsTo = e2.EmployeeID
