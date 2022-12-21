-- Script Name: String Split
-- Script Type : Fuction
-- Develop By: Muhammad Imran
-- Date Created: 09 Dec 2022
-- Modify Date: 21 Dec 2022

USE tempdb
GO

--Creating Table Employee 
CREATE TABLE #Employee
(
 EmployeeID     INT IDENTITY(1,1),
 EmployeeName   VARCHAR(500),
 EmailAddresses VARCHAR(500)
);
GO

--Inserting Records into Employee table 
INSERT INTO #Employee(EmployeeName, EmailAddresses)
VALUES
('John', 'John_1@gmail.com;John_2@gmail.com;John_3@hotmail.com'),
('Sarah', 'Sarah_1@gmail.com;Sarah_2@hotmail.com;Sarah_3@gmail.com'),
('Aaron', 'Aaron_1@gmail@com;Aaron_2@hotmail.com'),
('Ackerman', 'Ackerman_1@gmail.com;Ackerman_2@hotmail.com');
GO
 
SELECT * FROM #Employee;
GO

--Using String Split function 
USE tempdb
GO
 
SELECT EmployeeID
     , EmployeeName
 , value AS EmailAddress
 , Ordinal
FROM   #Employee
CROSS APPLY STRING_SPLIT(EmailAddresses, ';', 1);
GO

--Example 2
USE tempdb
GO
  
SELECT EmployeeID
     , EmployeeName
     , value AS EmailAddress
     , Ordinal
FROM   #Employee
CROSS APPLY STRING_SPLIT (EmailAddresses, ';', 1)
WHERE ordinal<3;
GO

