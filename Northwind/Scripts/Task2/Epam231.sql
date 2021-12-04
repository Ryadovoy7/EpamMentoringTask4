--  Определить продавцов, которые обслуживают регион 'Western' (таблица Region).
SELECT DISTINCT et.EmployeeID, r.RegionDescription
FROM Northwind.EmployeeTerritories AS et
JOIN Northwind.Territories AS t ON et.TerritoryID = t.TerritoryID
JOIN Northwind.Region AS r ON r.RegionID = t.RegionID
WHERE r.RegionDescription = 'Western'
