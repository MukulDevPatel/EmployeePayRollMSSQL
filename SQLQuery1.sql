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

--UC8_AddPhoneAddressAndDepartment
Alter table Employee_Payroll Add Phone Varchar(10),
Address Varchar(100) Default 'N/A',
Department Varchar(20);

Update Employee_Payroll set Phone='6523123674',Address='Mumbai',Department='Technical' where Name='Mukul';
Update Employee_Payroll set Phone='6523123675',Address='Mumbai',Department='Technical' where Name='Steve';
Update Employee_Payroll set Phone='6523123676',Address='Mumbai',Department='Technical' where Name='Vansh';
Update Employee_Payroll set Phone='6523123674',Address='Mumbai',Department='Technical' where Name='Dev';
Update Employee_Payroll set Phone='6523123678',Address='Mumbai',Department='Technical' where Name='Bruce';
Update Employee_Payroll set Phone='6523123673',Address='Mumbai',Department='Technical' where Name='Arvind';
Update Employee_Payroll set Phone='6523123670',Address='Mumbai',Department='Technical' where Name='Chris';
Update Employee_Payroll set Phone='6523123671',Address='Mumbai',Department='Technical' where Name='Jay';

--UC9_AddAnotherColumn
Alter table Employee_Payroll Add BasicPay Bigint,
Deduction Bigint,
TaxablePay Bigint,
IncomeTax Bigint,
NetPay Bigint;

Update Employee_Payroll set BasicPay='20000',Deduction='2000',TaxablePay='200',IncomeTax='200',NetPay='18000' where Name='Mukul';
Update Employee_Payroll set BasicPay='30000',Deduction='3000',TaxablePay='300',IncomeTax='300',NetPay='27000' where Name='Steve';
Update Employee_Payroll set BasicPay='20000',Deduction='2000',TaxablePay='200',IncomeTax='200',NetPay='18000' where Name='Vansh';
Update Employee_Payroll set BasicPay='21000',Deduction='2100',TaxablePay='210',IncomeTax='210',NetPay='18900' where Name='Dev';
Update Employee_Payroll set BasicPay='22000',Deduction='2200',TaxablePay='220',IncomeTax='220',NetPay='18800' where Name='Bruce';
Update Employee_Payroll set BasicPay='31000',Deduction='3100',TaxablePay='310',IncomeTax='310',NetPay='28000' where Name='Arvind';
Update Employee_Payroll set BasicPay='32000',Deduction='3200',TaxablePay='320',IncomeTax='320',NetPay='29000' where Name='Chris';
Update Employee_Payroll set BasicPay='40000',Deduction='4000',TaxablePay='400',IncomeTax='400',NetPay='36200' where Name='Jay';

--UC10_SalesAndMarketing
Update Employee_Payroll set Department='Sales and Marketing' where Name='Jay';