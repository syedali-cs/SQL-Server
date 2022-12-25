--Script Name: Cryptographic Functions – HASHBYTES – Enhancement
--Script Type: Function
--Article: https://raresql.com/2013/04/01/sql-server-cryptographic-functions-hashbytes-enhancement/
--Developed By: Muhammad Imran
--Date Created: 01 Apr 2013
--Date Modified: 22 Dec 2022

--Example 

--Declare variable
DECLARE @String varchar(7);

--Set String Variable
Set @String ='raresql'
 
--This [Algorithm type] will work in SQL Server 2005 and above
Use Cryptographic-HASHBYTES() function
SELECT 'MD2' AS [Algorithm type]
      , HASHBYTES('MD2', @String) as [HashBytes]
      , LEN(HASHBYTES('MD2', @String)) as [Length in Bytes]
UNION ALL
SELECT 'MD4' AS [Algorithm type]
      , HASHBYTES('MD4', @String) as [HashBytes]
      , LEN(HASHBYTES('MD4', @String)) as [Length in Bytes]
UNION ALL
SELECT 'MD5' AS [Algorithm type]
      , HASHBYTES('MD5', @String) as [HashBytes]
      , LEN(HASHBYTES('MD5', @String)) as [Length in Bytes]
UNION ALL
SELECT 'SHA' AS [Algorithm type]
      , HASHBYTES('SHA', @String) as [HashBytes]
      , LEN(HASHBYTES('SHA', @String)) as [Length in Bytes]
UNION ALL
SELECT 'SHA1' AS [Algorithm type]
      , HASHBYTES('SHA1', @String) as [HashBytes]
      , LEN(HASHBYTES('SHA1', @String)) as [Length in Bytes]
UNION ALL
SELECT 'SHA2_256' AS [Algorithm type]
      , HASHBYTES('SHA2_256', @String) as [HashBytes]
      , LEN(HASHBYTES('SHA2_256', @String)) as [Length in Bytes]
UNION ALL
SELECT 'SHA2_512' AS [Algorithm type]
      , HASHBYTES('SHA2_512', @String) as [HashBytes]
      , LEN(HASHBYTES('SHA2_512', @String)) as [Length in Bytes]
GO

--End of example 
