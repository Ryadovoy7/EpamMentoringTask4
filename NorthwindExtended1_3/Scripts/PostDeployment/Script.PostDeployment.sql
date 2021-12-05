/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (SELECT * FROM [Northwind].[Categories])
AND NOT EXISTS (SELECT * FROM [Northwind].[Suppliers])
AND NOT EXISTS (SELECT * FROM [Northwind].[Products])
BEGIN
:r .\Categories.sql
:r .\Suppliers.sql
:r .\Products.sql
END
