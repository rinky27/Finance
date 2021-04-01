create database Finance

create table UserRegistration
(UserId int primary key identity,Name varchar(30),PhoneNo int,Username varchar(30),address varchar(30),password varchar(30))
select * from UserRegistration

create table EMICard (VirtualCard int primary key,cardtype varchar(30), Bank varchar(30), ACCNo int ,IFSCCode int,UserId int references UserRegistration(UserId),Limit int,Balance int,Status varchar(30)) 
select * from EMICard

create table Product(ProdId int Primary key,ProdName varchar(30),ProdImage varchar(50),Category varchar(30),Price int,Emi_Scheme varchar(30))
select * from Product

create table OrderInfo(OrderId int Primary key,UserId int references UserRegistration(UserId),VirtualCard int references EMICard(VirtualCard),ProdId int references Product(ProdId),EmiDate Date default getdate(),EMIPaid int,EMIBalance int)
select * from OrderInfo


