select * from (select 1);
select * from (select 1 union select 2);
select (2,'B') = (select 1 as A, 'A' as B union select 2,'B');
select (2,'B') in (select 1 as A, 'A' as B union select 2,'B');

create table T(A integer primary key);
create table U(A integer references T(A));
insert into T values(0);
insert into T values(1);
insert into U values(0);
select U.A from U where U.A = (select A from T where T.A = U.A);
select U.A from U left join T on T.A = U.A;

