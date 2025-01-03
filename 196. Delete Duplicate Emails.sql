Create table Person (Id int, Email varchar(255))
Truncate table Person
insert into Person (id, email) values ('1', 'john@example.com')
insert into Person (id, email) values ('2', 'bob@example.com')
insert into Person (id, email) values ('3', 'john@example.com')

select * from Person

delete from Person 
where id NOT IN (
	SELECT MIN(id)
	FROM Person
	group by Email
);

delete p1 
from Person p1 
inner join Person p2 ON p1.Email = p2.Email and p1.Id > p2.Id