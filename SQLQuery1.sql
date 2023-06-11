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