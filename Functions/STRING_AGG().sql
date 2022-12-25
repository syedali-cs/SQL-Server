-- Script Name: STRING_AGG()
-- Script Type: Fuction
-- Developed By: Muhammad Imran
-- Date Created: 01 Dec 2022
-- Date Modified: 21 Dec 2022

--Sample
USE Northwind
GO
 
SELECT [Country]
     , [CompanyName]
FROM   [dbo].[Customers]
ORDER BY [Country];
GO
-- End of Sample

--Example-1
USE Northwind
GO
 
SELECT [Country]
     , STRING_AGG(CompanyName,', ') AS [CompanyName]
FROM   [dbo].[Customers]
GROUP BY [Country]
ORDER BY [Country];
GO
-- End of example-1

--Example-2
USE Northwind
GO
 
SELECT [Country]
       ,STRING_AGG(CompanyName,', ') WITHIN GROUP (ORDER BY CompanyName) AS [CompanyName]
FROM   [dbo].[Customers]
GROUP BY [Country]
ORDER BY [Country];
GO
-- End of example-2

--Example-3
USE Northwind
GO
 
SELECT [CompanyName] 
      , STRING_AGG(OrderID,',') AS OrderIDs
FROM   [Customers]
INNER JOIN [Orders] ON [Customers].[CustomerID]=[Orders].[CustomerID] 
GROUP BY [CompanyName];
GO
-- End of example-3
