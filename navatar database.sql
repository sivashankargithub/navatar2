create database navatar1;
use navatar1;
select * from navatar2;
select id, name, country_code, gmail, phone, location, language from navatar2;

drop table navatar2;
create table customers(id bigint auto_increment primary key,fname varchar(50), 
lname varchar(50), gender enum("male","female"), 
country_code varchar(3), zipcode varchar(5), email varchar(30), mobile varchar(10), lang_known varchar(100));
insert into customers(fname,lname,zipcode,lang_known) values("John","Smith","42002","EN,HI");
select * from customers;
create table services(id bigint auto_increment primary key, service_name varchar(100));
insert into services(service_name)values("Bike Repair"),("Cooking"),("Programming Support");
select * from services;
select * from service_provider;

create table service_provider(id bigint auto_increment primary key, fname varchar(50),lname varchar(50), gender enum("male","female"), country_code varchar(3), pincode varchar(6),email varchar(30), mobile varchar(10), lang_known varchar(150), service1_id bigint,service2_id bigint, service3_id bigint, foreign key(service1_id) references services(id),
foreign key(service2_id)references services(id), foreign key(service3_id)references services(id));
insert into service_provider (fname,lname,pincode,service1_id) values("Saleem","Bhai","560083",1);
insert into service_provider(fname,lname,pincode,service1_id)value("Lakshmi","Rao","560100",2);
insert into service_provider (fname,lname,pincode,service1_id)values("CS","Kuthyar","560083",3);
insert into service_provider(fname,lname,pincode,service1_id,service2_id)values("Sivashankar","Chandrappa","635107",1,3);
insert into service_provider(fname,lname,pincode,service1_id,service2_id)values("Kishan","Rajeevi","560098",2,3);
insert into service_provider(fname,lname,pincode,service1_id,service2_id)values("Pranav","Nayak","576105",2,3);
insert into service_provider(fname,lname,pincode,service1_id,service2_id,service3_id)values("Vikranth","Sabari","691001",1,2,3);
alter table service_provider add column is_active boolean default true;
select * from service_provider;
select * from service_provider where service1_id = 3 or service2_id = 3 or service3_id=3;

create table service_timing(id bigint auto_increment primary key, service_provider_id bigint, service_day enum("Mon","Tue","Wed","Thu","Fri","Sat","Sun"), timings varchar(300),is_available boolean default true, foreign key(service_provider_id)references service_provider(id));
alter table service_timing drop column is_available;
insert into service_timing(service_provider_id,service_day,timings)values
(1,"Mon","00:30,01:30,02:30,03:30,04:30,05:30"),
(1,"Tue","08:30,09:30,10:30"),
(2,"Mon","00:30,01:30"),
(2,"Tue","00:30,01:30"),
(2,"Wed","00:30,01:30"),
(2,"Thu","00:30,01:30"),
(2,"Fri","00:30,01:30"),
(2,"Sat","00:30,01:30"),
(3,"Mon","23:30,00:30,13:30"),
(3,"Tue","23:30,00:30,13:30"),
(3,"Wed","23:30,00:30,13:30"),
(3,"Thu","23:30,00:30,13:30"),
(3,"Fri","23:30,00:30,13:30"),
(4,"Sat","08:30,09:30"),
(4,"Sun","05:30"),
(5,"Mon","12:00,13:00,14:00");
select * from service_timing;
update service_timing set timings=null where service_provider_id=1 and service_day="Mon"; 

create table appointment(id bigint auto_increment primary key,
 appointment_day enum("Mon","Tue","Wed","Thu","Fri","Sat","Sun"),
 appointment_time varchar(10), service_id bigint, issue varchar(50), 
 service_provider_id bigint, appointment_place varchar(20), customer_rating bigint, 
 customer_description varchar(100), work_status bigint default 0, service_provider_rating bigint, 
 service_provider_description varchar(100), 
 foreign key(service_id) references services(id), 
 foreign key(service_provider_id) references service_provider(id));
 
 insert into appointment
 (appointment_day, appointment_time,service_id,issue, service_provider_id,
 appointment_place)values("Fri","23:30", 3, "Python Lamda Operator",3,"GMeet");
 
 select * from appointment;