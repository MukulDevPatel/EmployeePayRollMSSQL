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
Insert into Employee_Payroll(Name,Salary,StartDate)values('Mukul',20000,'2022-10-10');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Steve',30000,'2022-10-12');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Vansh',20000,'2022-10-8');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Dev',21000,'2022-10-8');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Bruce',22000,'2022-10-8');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Arvind',31000,'2022-10-8');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Chris',32000,'2022-10-8');
Insert into Employee_Payroll(Name,Salary,StartDate)values('Jay',40000,'2022-10-8');