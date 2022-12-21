--In SQL Server 2022, an enhancement came in STRING_SPLIT() function, 
--which was a long awaited functionality. This enhancement provides a new column name ordinal, 
--which has row number for each string split by this function.
--Let me create a sample to demonstrate the functionality of new ordinal column in STRING_SPLIT() function as shown below.

USE tempdb
GO
    
CREATE TABLE #Employee
(
 EmployeeID     INT IDENTITY(1,1),
 EmployeeName   VARCHAR(500),
 EmailAddresses VARCHAR(500)
);
GO
    
INSERT INTO #Employee(EmployeeName, EmailAddresses)
VALUES
('John', 'John_1@gmail.com;John_2@gmail.com;John_3@hotmail.com'),
('Sarah', 'Sarah_1@gmail.com;Sarah_2@hotmail.com;Sarah_3@gmail.com'),
('Aaron', 'Aaron_1@gmail@com;Aaron_2@hotmail.com'),
('Ackerman', 'Ackerman_1@gmail.com;Ackerman_2@hotmail.com');
GO
 
SELECT * FROM #Employee;
GO

USE tempdb
GO
 
SELECT EmployeeID
     , EmployeeName
 , value AS EmailAddress
 , Ordinal
FROM   #Employee
CROSS APPLY STRING_SPLIT(EmailAddresses, ';', 1);
GO
--OUTPUT
