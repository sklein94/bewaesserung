drop database if exists bewaesserung;
create database bewaesserung;
use bewaesserung;

create table bewaesserung(
   id int auto_increment,
   wochentag varchar(16) not null,
   start time not null,
   ende time not null,
   primary key (id)
);

insert into bewaesserung(wochentag, start, ende) values ('montag', '12:00:00', '13:00:00');
