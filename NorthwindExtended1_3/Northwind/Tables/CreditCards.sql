CREATE TABLE [Northwind].[CreditCards] (
    [CreditCardNumber] VARCHAR (16)  NOT NULL,
    [ExpirationDate]   DATETIME      NOT NULL,
    [CardHolder]       NVARCHAR (50) NOT NULL,
    [EmployeeID]       INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([CreditCardNumber] ASC),
    CONSTRAINT [FK_CreditCards_ToTable] FOREIGN KEY ([EmployeeID]) REFERENCES [Northwind].[Employees] ([EmployeeID])
);

