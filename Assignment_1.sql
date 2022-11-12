Create table CUSTOMER
(
C_ID int NOT NULL primary key,
First_Name nvarchar(40) NOT NULL,
Last_Name nvarchar(40)NOT NULL,
city nvarchar(40 )NOT NULL,
country nvarchar(40) NOT NULL,
phone nvarchar(40) NOT NULL
)

Create table product
(
p_id int NOT NULL primary key,
productname nvarchar(30) NOT NULL,
Unitprice decimal(12,2) NOT NULL,
package nvarchar(30) NOT NULL,
Is_discountinued int NOT NULL
)

Create table orderitem
(
i_id int NOT NULL primary key,
o_id int NOT NULL, 
p_id int NOT NULL,
Unitprice decimal(12,2) NOT NULL,
quantity int NOT NULL
)

Create table corder
(
o_id  int NOT NULL primary key,
o_Date datetime NOT NULL,
o_number nvarchar(40) NOT NULL,
c_id int NOT NULL,
totalamount decimal(12,2) NOT NULL
)	


insert into CUSTOMER values (1, 'sree', 'satya', 'hyderabad', 'india', 8985809762)

insert into CUSTOMER values (2, 'Asish', 'sah', 'Bruges', 'Belgium', 890895762)

insert into CUSTOMER values (3, 'Ajith', 'sharma', 'Tokyo', 'Japan', 890895267)

insert into CUSTOMER values (4, 'shin', 'chan', 'ipoh', 'Malaysia', 890896257)

insert into CUSTOMER values (5, 'raj', 'gurh', 'Berlin', 'Germany', 908896257)


insert into C_ORDER values (101, 1905-06-10, 305, 2, 2100.00)

insert into C_ORDER values (102, 1905-06-04, 304, 4, 1600.00)
insert into C_ORDER values(103, 1905-06-18, 303, 3, 2550.00)
insert into C_ORDER values(104, 1905-06-23, 301, 1, 2000.00)
insert into C_ORDER values(105, 1905-06-06, 302, 5, 3500.00)

insert into PRODUCT values(411, 'Speakers', 500.00, 'to be shipped', 0)
insert into PRODUCT values(412, '8GB_RAM', 700.00, 'tstarted shipping', 0)
insert into PRODUCT values(413, 'SSD', 2100.00, 'shipped', 1)
insert into PRODUCT values(414, 'Cable_Wires', 200.00, 'shipping', 1)
insert into PRODUCT values(415, 'PenDrive', 2250, 'shipped', 0)

insert into ORder_ITEM values(2115, 101, 413, 2100.00, 1)

insert into ORder_ITEM values(2116, 104, 411, 500.00, 4)

insert into ORder_ITEM values(2117, 105, 412, 700.00, 5)
insert into ORder_ITEM values(2118, 102, 414, 200.00, 8)
insert into ORder_ITEM values(2119, 103, 415, 2550.00, 1)

 select * from CUSTOMER

 select * from CUSTOMER where First_Name like '__i%' 

 select * from CUSTOMER where Country like '%i' or Country like '%y'


select * from SUPPLIER 

insert into SUPPLIER values(1, 'ABC', 'Shish', 'Manager', 'Bruges', 'Germany', 8987656765, 223-2798)
insert into SUPPLIER values(2, 'Exotic liquids', ' AShish', 'employee', 'syu', 'Brazil', 8987354765, -4788)
insert into SUPPLIER values(3, 'BYC', 'sirisah', 'employee', 'kolkata',  'india', 8987689765, 9098-2577 )
insert into SUPPLIER values(4, 'SHC', 'ammu', 'employee', 'hyderabad', 'india', 7898656765, -2446)

select * from CUSTOMER where Country like 'Germany'

select First_Name + ' ' + Last_Name from CUSTOMER

UPDATE CUSTOMER SET First_Name = 'sudha' where C_ID like '4%'

select * from CUSTOMER

ALTER table CUSTOMER add FAX nvarchar(30)

UPDATE CUSTOMER SET FAX = '233-434' where C_ID like '1%'

UPDATE CUSTOMER SET FAX = '255-324' where C_ID like '2%'

UPDATE CUSTOMER SET FAX = '222-3224' where C_ID like '3%'

Select * from CUSTOMER where FAX > NULL
UPDATE CUSTOMER SET FAX = 0 where C_ID like '4%'
UPDATE CUSTOMER SET FAX = ' ' where C_ID like '5%'
UPDATE CUSTOMER SET FAX = ' ' where C_ID like '4%'

Select * from CUSTOMER where FAX > '  '

Select * from CUSTOMER where First_Name like '_u%'
  
select * from ORDER_ITEM where Unit_Price > 10 or Unit_Price < 20

ALTER table C_ORDER add ship_name nvarchar(40)


insert into C_ORDER (ship_name) values ('XYZ'), ('La corned abondance'), ('ABC'), ('La corned abondance'), ('MNB')


select * from C_ORDER


