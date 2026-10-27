show databases;

create database BankingDB;
use BankingDB;
Create table Customers(
   CustomerID INT,
   Firstname varchar(50),
   lastname varchar(50),
   email varchar(100),
   phone varchar(10)
   );
   
 desc customers;  
 
 alter table customers
 Add Constraint pk_customer_id primary key (customerID);

 select * from customers;
 
Alter table customers
ADD AccountCreationDate Date;
 
create table Accounts(
  
  AccountID int,
  AccountType varchar(20),
  Balance decimal(10,2)
  );
  
Alter table accounts
ADD constraint pk_account_id primary key (AccountID);
  desc accounts;
  
 Create table transactions(
   
   TransactionID int,
   Amount decimal(10,2),
   TransactionType varchar(20)
   );
Alter table transactions
ADD constraint pk_transaction_id primary key (TransactionID);
desc transactions;
   
create table Branches (
    BranchID int,
    BranchName varchar(100),
    BranchAddress varchar(200),
    BrachPhone varchar(15)
);

Alter table branches
ADD constraint pk_branch_id primary key (BranchID);

desc branches;
 
    
create table AccountBraches (
    AssingnmentDate date
    );
 desc accountbraches;
 
 create table Loans (
     LoanAmount decimal(10,2),
     InterestRate decimal(5,2),
     StartDate date,
     EndDate date
     );
  Alter table Loans
ADD LoanID int; 
ALTER TABLE loans
MODIFY COLUMN loanID INT AUTO_INCREMENT PRIMARY KEY FIRST;  
desc Loans;  
   