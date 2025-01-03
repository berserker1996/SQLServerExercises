use LeetCodeExercises;

Create table Person (personId int, firstName varchar(255), lastName varchar(255))
Create table  Address (addressId int, personId int, city varchar(255), state varchar(255))
Truncate table Person
insert into Person (personId, lastName, firstName) values ('1', 'Wang', 'Allen')
insert into Person (personId, lastName, firstName) values ('2', 'Alice', 'Bob')
Truncate table Address
insert into Address (addressId, personId, city, state) values ('1', '2', 'New York City', 'New York')
insert into Address (addressId, personId, city, state) values ('2', '3', 'Leetcode', 'California')

select * from Person;
select * from Address;

select P.firstName, P.lastName, A.city, A.state
from Person P
left join Address A
on P.personId = A.personId;