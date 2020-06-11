create database DB_DrugStore
use DB_DrugStore

create table tbCustomer(
ID_Card varchar(12) not null primary key,
Name varchar(50) not null,
Address_ varchar(50) not null,
Phone_Number varchar(12) not null
)

insert into tbCustomer values('320100000001','Alfi Naufal','Setu Babakan, Depok','081234000001')
insert into tbCustomer values('320100000002','Hilman Maulana Anhar','Ciledug, Tangerang','081234000002')
insert into tbCustomer values('320100000003','Muhamad Dani Setiawan','Citereup, Bogor','081234000003')
insert into tbCustomer values('320100000004','Ferdiansyah','Cibinong, Bogor','081234000004')
insert into tbCustomer values('320100000005','Lisa Blekping','Seoul, Brebes','081234000005')
insert into tbCustomer values('320100000006','Jeni','Cibubur, Bogor','081234000006')

create table tbMedicine(
ID_Medicine varchar(12) not null primary key,
Name varchar(50) not null,
Type_ varchar(25) not null,
Used_For varchar(50) not null,
Cost money not null,
ID_Supplier varchar(50),
Qty_Medicine int
)

insert into tbMedicine values('ABNDZL','Albendazol','Pill','Clean worms and parasytes in the stomach','15000','32012000001','4')
insert into tbMedicine values('ALPRNL','Alopurinol','Capsul','Reduce uric acid','30000','32012000002','5')
insert into tbMedicine values('AMNFLN','Aminofilin','Injection/Pill','Asthma and Lung','45000','32012000003','6')
insert into tbMedicine values('AZTRMS','Azitromisin','Pill/Capsul/Syrup','Bacterial infection','50000','32012000004','8')
insert into tbMedicine values('ATNLL','Atenolol','Pill','Hypertension','65000','32012000005','5')
insert into tbMedicine values('DXTRFN','Dextrofen','Syrup','Cough, Allergy','70000','32012000006','4')

create table tbSupplier(
ID_Supplier varchar(12) not null primary key,
Name varchar(50) not null,
Medicine_Name varchar(50) not null,
Address_ varchar (50) not null,
Phone_Number varchar(12) not null,
Qty_Supplier int
)


insert into tbSupplier values('32012000001','Michael Steve','Abedanzol','New York, USA','082200000010','50')
insert into tbSupplier values('32012000002','George Keel','Aluporinol','California, USA','082200000020','120')
insert into tbSupplier values('32012000003','Ed Kernel','Aminofilin','London, England','082200000030','40')
insert into tbSupplier values('32012000004','Curious Envy','Azitromisin','Jakarta, Indonesia','082200000040','60')
insert into tbSupplier values('32012000005','Connor Kenway','Atenolol','Shanghai, China','082200000050','90')
insert into tbSupplier values('32012000006','Roger Dave','Dextrofen','Kuala Lumpur, Malaysia','082200000060','220')

create table tbEmployee(
ID_Employee varchar(12) not null primary key,
Name varchar(50) not null,
Address_ varchar (50) not null,
Phone_Number varchar(12) not null,
Shift_Time varchar(12) not null
)

insert into tbEmployee values('320123000001','Asep Kurniawan','Beijing, China','085300000011','Night')
insert into tbEmployee values('320123000002','Imron Wahyudi','Hanoi, Vietnam','085300000022','Morning')
insert into tbEmployee values('320123000003','Pedro Val','Milan, Italy','085300000033','Afternoon')
insert into tbEmployee values('320123000004','Kal El','Manchester, England','085300000044','Morning')
insert into tbEmployee values('320123000005','Edward John','Madrid, Spain','085300000055','Afternoon')
insert into tbEmployee values('320123000006','Shane','Sydney, Australia','085300000066','Night')

create table tbTransaction(
Transaction_Code varchar(12) not null primary key,
ID_Card varchar(12) not null,
ID_Medicine varchar(12) not null,
ID_Employee varchar(12) not null,
Date_Time varchar(12) not null,
Qty int not null,
Total_Cost money not null,
foreign key (ID_Card) references tbCustomer (ID_Card),
foreign key (ID_Medicine) references tbMedicine (ID_Medicine),
foreign key (ID_Employee) references tbEmployee(ID_Employee),
)

insert into tbTransaction values('A0001','320100000001','ABNDZL','320123000001','10/5/2018','10','150000')
insert into tbTransaction values('B0002','320100000002','ALPRNL','320123000002','12/5/2018','5','150000')
insert into tbTransaction values('C0003','320100000003','AMNFLN','320123000003','10/3/2018','2','90000')
insert into tbTransaction values('D0004','320100000004','AZTRMS','320123000004','10/4/2018','4','200000')
insert into tbTransaction values('F0005','320100000005','ATNLL','320123000005','10/5/2018','2','130000')
insert into tbTransaction values('G0006','320100000006','DXTRFN','320123000006','10/6/2018','3','210000')

select *from tbCustomer
select *from tbEmployee
select *from tbMedicine
select *from tbSupplier
select *from tbTransaction
