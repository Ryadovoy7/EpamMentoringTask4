/* Выдать всех поставщиков (колонка CompanyName в таблице Suppliers),
у которых нет хотя бы одного продукта на складе (UnitsInStock в таблице Products равно 0). 
Использовать вложенный SELECT для этого запроса с использованием оператора IN. */

SELECT s.CompanyName
FROM Northwind.Suppliers AS s
WHERE s.SupplierID IN (SELECT DISTINCT p.SupplierID FROM Northwind.Products AS p WHERE p.UnitsInStock = 0)

-- Вариант на случай если надо учитывать что вообще нет продукта 
SELECT s.CompanyName
FROM Northwind.Suppliers AS s
WHERE s.SupplierID IN (SELECT DISTINCT p.SupplierID FROM Northwind.Products AS p WHERE p.UnitsInStock = 0)
OR s.SupplierID NOT IN (SELECT DISTINCT p.SupplierID FROM Northwind.Products AS p)