/* · Версия 1.3. Добавляет следующие минорные изменения относительно 1.1:
o Переименование Region в Regions
o Добавление в таблицу клиентов даты основания */

IF EXISTS (SELECT * FROM sys.objects 
					WHERE object_id = OBJECT_ID(N'[Northwind].[Region]') 
					AND OBJECTPROPERTY(object_id, N'IsUserTable') = 1)
BEGIN
    exec sp_rename '[Northwind].[Region]', 'Regions'
END
GO

IF NOT EXISTS ( SELECT  *
                FROM    SYSCOLUMNS sc
                WHERE   EXISTS ( SELECT id
                                 FROM   sys.objects
                                 WHERE  NAME LIKE 'Customers'
                                        AND sc.id = id )
                        AND sc.name = 'FoundationDate' ) 
BEGIN
    ALTER TABLE Northwind.Customers ADD FoundationDate datetime NULL
END
GO