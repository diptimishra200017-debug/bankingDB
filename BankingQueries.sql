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

alter table customers
ADD DateOfBirth date;

alter table customers
modify phone varchar(20);

desc customers;
 
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
 
 alter table accounts
 ADD constraint chk_Balance
 check (Balance>=1000);
 
desc accounts;

drop table accountbraches;

Alter table accounts
ADD customerID int;
desc accounts;

Alter table accounts
ADD constraint FK_Accounts_Customers
foreign key (CustomerID)
references customers(CustomerID);

Alter table customers
modify Firstname varchar(50) NOT NULL;
desc customers;
 Alter table customers
 Add constraint uk_email unique (Email);
 
 Alter table customers
 alter column lastname set default "NA";

Alter table accounts
ADD BranchID int;
desc accounts; 
 Alter table accounts
ADD constraint FK_Accounts_Branches
foreign key (BranchID)
references branches(BranchID);

Alter table transactions
ADD AccountID int;
desc transactions; 
 Alter table transactions
ADD constraint FK_Transactions_Accounts
foreign key (AccountID)
references accounts(AccountID);

Alter table loans
ADD CustomerID int;
desc Loans; 
 Alter table Loans
ADD constraint FK_Loans_Customer
foreign key (CustomerID)
references customers(CustomerID);