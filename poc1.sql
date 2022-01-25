create schema poc1;
use poc1;
create table author(id int primary key,name varchar(100));
show tables;
insert into author values(1,'james');
create table user(id int primary key,name varchar(100));
use  poc1;
create table user(id int primary key,name varchar(100));

create table post(pid  int not null,primary key(pid),name varchar(100),aid int, foreign key(aid) references author(aid),createdts datetime DEFAULT CURRENT_TIMESTAMP); 
use poc1;
create table comment(cid  int not null,primary key(cid),content varchar(100),pid int, foreign key(pid) references post(pid),createdts datetime DEFAULT CURRENT_TIMESTAMP,userid int,foreign key(userid) references user(userid));
insert into author values(2,'james bond');
insert into author values(3,'james3');
insert into author values(4,'bravo');

insert into post values(1,'good post',2,current_timestamp());
insert into post values(2,'good post2',2,current_timestamp());
insert into post values(3,'good post3',2,current_timestamp());
insert into post values(4,'good post4',2,current_timestamp());
insert into post values(5,'good post5',2,current_timestamp());
insert into post values(6,'good post6',2,current_timestamp());
insert into post values(7,'good post7',2,current_timestamp());
insert into post values(8,'good post8',2,current_timestamp());
insert into post values(9,'good post9',2,current_timestamp());
insert into post values(10,'good post3',2,current_timestamp());
insert into post values(11,'post not good',3,current_timestamp());
insert into post values(12,'nature',4,current_timestamp());


insert into user values(1,'user1');
insert into user values(2,'user2');
insert into user values(3,'user3');
insert into user values(4,'user4');
insert into user values(5,'user5');
insert into user values(6,'user6');
insert into user values(7,'user7');
insert into user values(8,'user8');
insert into user values(9,'user9');
insert into user values(10,'user10');
insert into user values(11,'user11');


insert into comment values(1,'comment1',1,current_timestamp(),1);
insert into comment values(2,'comment2',2,current_timestamp(),2);
insert into comment values(3,'comment3',3,current_timestamp(),3);
insert into comment values(4,'comment4',4,current_timestamp(),4);
insert into comment values(5,'comment5',5,current_timestamp(),5);
insert into comment values(6,'comment6',6,current_timestamp(),6);
insert into comment values(7,'comment7',7,current_timestamp(),7);
insert into comment values(8,'comment8',8,current_timestamp(),8);
insert into comment values(9,'comment9',9,current_timestamp(),9);
insert into comment values(10,'comment10',10,current_timestamp(),10);
insert into comment values(11,'comment11',11,current_timestamp(),1);
insert into comment values(12,'comment12',2,current_timestamp(),2);
insert into comment values(13,'comment13',2,current_timestamp(),4);
insert into comment values(14,'comment14',2,current_timestamp(),3);
use poc1;
insert into comment values(15,'comment15',2,current_timestamp(),10);
insert into comment values(16,'comment16',2,current_timestamp(),9);
insert into comment values(17,'comment17',2,current_timestamp(),8);
insert into comment values(18,'comment18',2,current_timestamp(),5);
insert into comment values(19,'comment19',2,current_timestamp(),7);
insert into comment values(20,'comment20',2,current_timestamp(),6);
insert into comment values(21,'comment21',2,current_timestamp(),3);
insert into comment values(22,'comment22',2,current_timestamp(),1);


select p.name,c.content,c.createdts from author a inner join post p on a.aid=p.pid inner join comment c on p.pid=c.pid
where a.name='james bond' 
and c.cid in(select c1.cid from comment c1 where c1.pid=c.pid order by c1.createdts desc ) limit 10;













