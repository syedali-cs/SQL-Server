--Script Name: STRING_AGG()
--Script Type: Fuction
--Article: https://raresql.com/2022/12/01/sql-server-string_agg-function/
--Developed By: Muhammad Imran
--Date Created: 01 Dec 2022
--Date Modified: 21 Dec 2022

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
--Use Northwind Database
USE Northwind
GO
 
--Use STRING_AGG() function
SELECT [Country]
     , STRING_AGG(CompanyName,', ') AS [CompanyName]
FROM   [dbo].[Customers]
GROUP BY [Country]
ORDER BY [Country];
GO
-- End of example-1

--Example-2
--Use Northwind Database
USE Northwind
GO

--Use STRING_AGG() function
SELECT [Country]
       ,STRING_AGG(CompanyName,', ') WITHIN GROUP (ORDER BY CompanyName) AS [CompanyName]
FROM   [dbo].[Customers]
GROUP BY [Country]
ORDER BY [Country];
GO
-- End of example-2

--Example-3
--Use Northwind Database
USE Northwind
GO

--Use STRING_AGG() function 
SELECT [CompanyName]
      , STRING_AGG(OrderID,',') AS OrderIDs
FROM   [Customers]
INNER JOIN [Orders] ON [Customers].[CustomerID]=[Orders].[CustomerID] 
GROUP BY [CompanyName];
GO
-- End of example-3
