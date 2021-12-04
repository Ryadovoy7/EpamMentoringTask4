CREATE TABLE [Northwind].[CreditCards]
(
	[CreditCardNumber] VARCHAR(16) NOT NULL PRIMARY KEY, 
    [ExpirationDate] DATETIME NOT NULL, 
    [CardHolder] NVARCHAR(50) NOT NULL, 
    [EmployeeID] INT NOT NULL, 
    CONSTRAINT [FK_CreditCards_ToTable] FOREIGN KEY ([EmployeeID]) REFERENCES [Northwind].[Employees]([EmployeeID])
)
