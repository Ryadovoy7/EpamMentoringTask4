/* Найти всех покупателей, которые живут в одном городе. */
-- с дублями
SELECT c1.CustomerID AS [Customer One], c2.CustomerID AS [Customer Two], c1.City
FROM Northwind.Customers AS c1, Northwind.Customers AS c2
WHERE c1.City = c2.City AND c1.CustomerID != c2.CustomerID

-- уникальные пары
SELECT c1.CustomerID AS [Customer One], c2.CustomerID AS [Customer Two], c1.City
FROM Northwind.Customers AS c1, Northwind.Customers AS c2
WHERE c1.City = c2.City AND c1.CustomerID < c2.CustomerID

-- только город и каждый покупатель
SELECT DISTINCT c1.City, c1.CustomerID
FROM Northwind.Customers AS c1, Northwind.Customers AS c2
WHERE c1.City = c2.City AND c1.CustomerID != c2.CustomerID



