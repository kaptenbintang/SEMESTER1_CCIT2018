create database DB_DrugStore
use DB_DrugStore


create table tbSupplier(
ID_Supplier varchar(12) not null primary key,
Name varchar(50) not null,
Medicine_Name varchar(50) not null,
Address_ varchar (50) not null,
Phone_Number varchar(12) not null,
Qty_Supplier int
)

create table tbMedicine(
ID_Medicine varchar(12) not null primary key,
Name varchar(50) not null,
Type_ varchar(25) not null,
Used_For varchar(50) not null,
Cost money not null,
ID_Supplier varchar(50),
Qty_Medicine int
)

create trigger insert_data_tbMedicine
on tbMedicine after insert
as
update tbSupplier set tbSupplier.Qty_Supplier = tbSupplier.Qty_Supplier - inserted.Qty_Medicine
from inserted where tbSupplier.ID_Supplier = inserted.ID_Supplier

insert into tbSupplier values('32012000001','Michael Steve','Abedanzol','New York, USA','082200000010','50')
insert into tbSupplier values('32012000002','George Keel','Aluporinol','California, USA','082200000020','120')
insert into tbSupplier values('32012000003','Ed Kernel','Aminofilin','London, England','082200000030','40')
insert into tbSupplier values('32012000004','Curious Envy','Azitromisin','Jakarta, Indonesia','082200000040','60')
insert into tbSupplier values('32012000005','Connor Kenway','Atenolol','Shanghai, China','082200000050','90')
insert into tbSupplier values('32012000006','Roger Dave','Dextrofen','Kuala Lumpur, Malaysia','082200000060','220')

insert into tbMedicine values('ABNDZL','Albendazol','Pill','Clean worms and parasytes in the stomach','15000','32012000001','4')
insert into tbMedicine values('ALPRNL','Alopurinol','Capsul','Reduce uric acid','30000','32012000002','5')
insert into tbMedicine values('AMNFLN','Aminofilin','Injection/Pill','Asthma and Lung','45000','32012000003','6')
insert into tbMedicine values('AZTRMS','Azitromisin','Pill/Capsul/Syrup','Bacterial infection','50000','32012000004','8')
insert into tbMedicine values('ATNLL','Atenolol','Pill','Hypertension','65000','32012000005','5')
insert into tbMedicine values('DXTRFN','Dextrofen','Syrup','Cough, Allergy','70000','32012000006','4')

select *from tbSupplier
select *from tbMedicine