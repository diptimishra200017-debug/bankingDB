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
 
 select * from customers;
 
   
   