-- Script Name: Concat()
-- Script Type: Fuction
-- Developed By: Muhammad Imran
-- Date Created: 29th Nov 2022
-- Date Modified: 22 Dec 2022

--Example 1
-- Concatenate multiple columns having NULL values

--Old Approach Using Add (+) Operator

USE Northwind
GO
 
SELECT [CompanyName]
     , [Address]
     , [City]
     , [Region]
     , [Address] + ' ' + [City] + ' ' + [Region] AS [FullAddress]
FROM [dbo].[Suppliers];
GO


--Use of IsNULL() to replace Null Values in old approach

USE Northwind
GO
 
SELECT [CompanyName]
     , [Address]
     , [City]
     , [Region]
     , ISNULL([Address],'') + ' ' + ISNULL([City],'') + ' ' + ISNULL([Region],'') AS [FullAddress]
FROM [dbo].[Suppliers];
GO

-- New Approach Using CONCAT() Function

USE Northwind
GO
 
SELECT [CompanyName]
     , [Address]
     , [City]
     , [Region]
     , CONCAT([Address],' ',[City],' ',[Region]) AS [FullAddress]
FROM [dbo].[Suppliers];
GO

-- End of example-1


--Example 2
-- Concatenate multiple columns having different data types

--Old Approach Using Add (+) Operator

USE Northwind
GO
 
SELECT [SupplierID] 
     , [ContactName]
     , [SupplierID] + ' ' + [ContactName] AS [SupplierID&Name]
FROM  [dbo].[Suppliers];
GO

--Use of CONVERT() function to convert int value to nvarchar datatype

USE Northwind
GO
 
SELECT [SupplierID] 
     , [ContactName]
     , CONVERT(NVARCHAR(50)
     , [SupplierID]) + ' ' + [ContactName] AS [SupplierID&Name]
FROM   [dbo].[Suppliers];
GO

-- New Approach Using CONCAT() function
USE Northwind
GO
 
SELECT [SupplierID] 
     , [ContactName]
     , CONCAT([SupplierID],' ',[ContactName]) AS [SupplierId&Name]
FROM   [dbo].[Suppliers];
GO

-- End of example-2
