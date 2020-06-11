create database dbtes
use dbtes

create table buku(
id_buku char(4) not null primary key,
judul_buku varchar(50),
penerbit varchar(50),
rak char(4),
jumlah_buku int
)
create table pinjam (
id_pinjam char(4) not null primary key,
id_petugas varchar(50),
id_buku varchar(50),
jumlah_pinjam int
)

insert into buku values('K001','Pemrograman Java','Erlangga','R001','40')
insert into buku values('K002','Pemrograman C++','Karya Dtama','R002','42')
insert into buku values('K003','Pemrograman Phyton','Tape','R001','57')

select *from buku
select *from pinjam

create trigger insert_data_pinjam
on pinjam after insert
as
update buku set buku.jumlah_buku = buku.jumlah_buku - inserted.jumlah_pinjam
from inserted where buku.id_buku = inserted.id_buku

insert into pinjam values('U001','AA0','K001','2')
insert into pinjam values('U002','AA0','K002','5')


