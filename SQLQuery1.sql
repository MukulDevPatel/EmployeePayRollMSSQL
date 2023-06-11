create database Payroll_Service;

--UC1_CreateDatabse
use Payroll_Service;

--UC2_EmployeePayroll
create table Employee_Payroll(
ID int identity(1,1) Primary Key,
Name varchar(20),
Salary Bigint,
StartDate Date
);

--UC3_InertData
Insert into Employee_Payroll(Name,Salary,StartDate)values('Mukul',20000,'2020-10-10');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Steve',30000,'2020-10-12');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Vansh',20000,'2020-10-8');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Dev',21000,'2020-10-8');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Bruce',22000,'2020-10-8');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Arvind',31000,'2020-10-8');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Chris',32000,'2020-10-8');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Jay',40000,'2020-10-8');

--UC4_RetrieveAllData
select * from Employee_Payroll;

--UC5_RetrieveSalary
select salary from Employee_Payroll WHERE Name = 'Chris';
select * from Employee_Payroll where StartDate between CAST('2018-01-01'as Date) and CURRENT_TIMESTAMP;

--UC6_AddGenderInParollService
Alter table Employee_Payroll Add Gender Varchar(1);

Update Employee_Payroll set Gender='M' where Name='Mukul';
Update Employee_Payroll set Gender='M' where Name='Steve';
Update Employee_Payroll set Gender='M' where Name='Vansh';
Update Employee_Payroll set Gender='M' where Name='Dev';
Update Employee_Payroll set Gender='M' where Name='Bruce';
Update Employee_Payroll set Gender='M' where Name='Arvind';
Update Employee_Payroll set Gender='M' where Name='Chris';
Update Employee_Payroll set Gender='M' where Name='Jay';

--UC7_FindAvgMinMaxCountAndNumOfEmployeeByGender
Select SUM(Salary) from Employee_Payroll where Gender='M' group by Gender;
Select Gender,Avg(Salary) from Employee_Payroll group by Gender;
Select MIN(Salary) from Employee_Payroll where Gender='M';
Select MAX(Salary) from Employee_Payroll where Gender='M';
Select Count(*) from Employee_Payroll group by Gender;