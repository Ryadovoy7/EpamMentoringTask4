/*
Ваша задача – подготовить к выпуску несколько версий проекта Northwind Extended, 
а точнее – базу данных проекта. Исходный проект основан на оригинальной 
базе Northwind (исходный код которой можно найти в материалах, в файле instnwnd.sql).

В рамках Northwind Extended предполагается выпустить следующие 3 версии:
· Версия 1.0. Основана на оригинальной базе Northwind
· Версия 1.1. Добавляет таблицу данных кредитных карт сотрудников: номер карты, дата истечения, имя card holder, ссылку на сотрудника, …
· Версия 1.3. Добавляет следующие минорные изменения относительно 1.1:
o Переименование Region в Regions
o Добавление в таблицу клиентов даты основания

Вся работа выполняется на SQL Server любой доступной редакции.

Создайте 2 sql-скрипта, которые выполняют обновление базы по версиям:

· 1.0 -> 1.1

· 1.1 -> 1.3

При выполнении задания добиться того, чтобы скрипты можно было накатывать многократно (например, для случая ошибочного повторного обновления) без ошибок.
*/


IF NOT EXISTS (SELECT * FROM sys.objects 
					WHERE object_id = OBJECT_ID(N'[Northwind].[CreditCards]') 
					AND OBJECTPROPERTY(object_id, N'IsUserTable') = 1)
BEGIN
	CREATE TABLE Northwind.CreditCards(
		CreditCardNumber varchar(16) NOT NULL,
		ExpirationDate datetime NOT NULL,
		CardHolder nvarchar(50) NOT NULL,
		EmployeeID int NOT NULL,
		CONSTRAINT PK_CreditCardNumber PRIMARY KEY (CreditCardNumber), 
		CONSTRAINT FK_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Northwind.Employees(EmployeeID)
	)
END