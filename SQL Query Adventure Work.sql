use AdventureWorks
select * from HumanResources.Employee

select Employeeid, contactID, LoginID, Title	
from HumanResources.Employee	

select * from HumanResources.Employee
where EmployeeID=34     --where clause filters records before grouping

--Retrieving specific Attributes
--You can write the Query in the following ways:
select DepartmentID, 'Department Number', Name 'Department Name' 
From HumanResources.Department

select DepartmentID AS 'Department Number', Name AS 'Department Name'
from HumanResources.Department

select EmployeeID, 'Designation: ', Title
from HumanResources.Employee

--Concatenate two strings, you can use the following Query
select 'snow' + 'Ball'

--SQL Query concatenate the values of the Name and GroupName columns of the Department Table
select Name + ' department comes under ' + GroupName + 'Group' AS Department
from HumanResources.Department

--SQL Query retrieves the per day rate of the Employees from the EmployeePayHistory table
select EmployeeID, Rate, Per_Day_Rate = 8 * Rate
from HumanResources.EmployeePayHistory

--Selected rows van be retrieve using the Where clause in the select statement
--Where clause filters records before grouping
select * from HumanResources.Department
where GroupName = 'Research and Development'

--SQL Query retrieve records from the employee table where the vacation hour is less than 5
select EmployeeID, NationalIDNumber, Title, VacationHours
from HumanResources.Employee
where VacationHours < 5

--Logical Operators
--Select statement to retrieve records based on one or more conditions
--And, OR, NOT
select * from HumanResources.Department
where GroupName = 'Manufacturing'   --where clause filters records before grouping
or GroupName = 'Quality Assurance'

--Range Operator
--Between and Not Between
select EmployeeID, 'VacationsHours'
from HumanResources.Employee
where VacationHours Between 20 and 50

--Selects value that match any one of the values in a list
select EmployeeID, Title, LoginID 
From HumanResources.Employee
where Title IN ('Recruiter', 'Stocker')

--String by using the following wildcard Characters
-- % - [] [^]
select * from HumanResources.Department
where Name Like 'Pro%'

--Null Values
select EmployeeID, EndDate
from HumanResources.EmployeeDepartmentHistory
where EndDate IS Null

--ISNULL() Fuction
select SalesPersonID, ISNULL(SalesQuota, 0.00) AS 'Sales Quota'
from Sales.SalesPerson

--Order BY Clause, Display Records in Specific Order
--Display record in ascending or descending order
select GroupName, 'Department', Name 
From HumanResources.Department
order by GroupName, DepartmentID

--select statement to retrieve only the first set of rows from the top of a table
select Top 10 * from HumanResources.Employee

--OFFSET _FETCH Clause
--Can be used to retrieve a specific number of records, starting from a particular position, in the result
--set. The result set should be sorted on a particular column.
select EmployeeID,NationalIDNumber, ContactID, HireDate
from HumanResources.Employee
order by EmployeeID
Offset 15 Rows Fetch Next 10 Rows Only

--Distinct Keywords, Eliminates the duplicate rows from the result set
select DISTINCT TITLE FROM
HumanResources.Employee
WHERE TITLE LIKE 'PR'


























