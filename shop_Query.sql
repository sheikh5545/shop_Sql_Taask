create table medicine (
	id serial primary key,
	name varchar (150) not null,
	batch varchar (150) not null,
	mrp int default 0,
	rate int default 0,
	purchase_Detaile varchar (150)
)
select * from medicine
	(/* manualy insert 1 row */)
insert into medicine 
	(name,batch,mrp,rate,purchase_detaile)
	values 
	('omnigel','om125s1',150,130,'Wholesale_Market')
select * from medicine
(/*  insert Multiple row */)
insert into medicine 
	(name,batch,mrp,rate,purchase_detaile)
	values 
	('paracetamol','om125s1',150,130,'Wholesale_Market'),
	('dicloplus','om125s1',60,45,'pharmacy'),
	('ap_Balm','ap251s1',35,30,'under_cutter'),
	('zandu_Balm','za5s12s',45,35,'Wholesale_Market')
select * from medicine
(/* using copy to insert Multiple row */)
copy medicine from 'E:/DA8/SQL/Day_5/shop_backup.csv' DELIMITER ',' CSV header
select * from medicine
	(/* select particular column use this*/)
select name from medicine
	(/* select Multiple column use , */)
select name,purchase_detaile from medicine
	(/* Display Reapetive value using distinct */)
select distinct batch from medicine
	(/* Using where check condition values*/)
select * from medicine where rate < 150
	(/* Using where then column name & = data which was be found*/)
select * from medicine where batch ='om125s1' 
	(/* Using where then column name & = data which was be found use OR you can find multiple data at the same time*/)
select * from medicine where batch ='om125s1' or batch ='"cs12sd"'
select * from medicine where rate > 80 and rate < 200






