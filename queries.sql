insert into dealership (name, location, date_established)
values ('Honda', 'Vancouver', '2015-01-10'), ('Ford', 'Calgary', '2013-06-11'), ('Toyota', 'Toronto', '2017-10-05');

insert into for_sale_cars (dealership_id, make, model, `year`)
values (1, 'Honda', 'Civic', '2022-01-01'), (1, 'Honda', 'CR-V', '2022-01-01'), (1, 'Honda', 'Accord', '2022-01-01'),
(2, 'Ford', 'F-150', '2022-01-01'), (2, 'Ford', 'Focus', '2022-01-01'), (2, 'Ford', 'Escape', '2022-01-01'), (2, 'Ford', 'Mustang', '2022-01-01'),
(3, 'Toyota', 'Rav4', '2022-01-01'), (3, 'Toyota', 'Corolla', '2022-01-01'), (3, 'Toyota', 'Tundra', '2022-01-01');

select fsc.make, fsc.model, fsc.`year` 
from for_sale_cars fsc 
order by fsc.`year` desc;

select d.name, d.location 
from dealership d
order by d.date_established asc
limit 1;

select fsc.make, fsc.model, fsc.`year`, d.name, d.location 
from for_sale_cars fsc 
inner join dealership d on d.id = fsc.dealership_id
where fsc.`year` > '2020-01-01'
order by fsc.`year` asc;

select count(fsc.id) 
from for_sale_cars fsc 
where fsc.`year` = '2019-01-01';

select count(fsc.id), d.name, d.location 
from for_sale_cars fsc
inner join dealership d on d.id = fsc.dealership_id
group by d.id
order by d.date_established desc 
limit 1;

select count(fsc.id) 
from for_sale_cars fsc 
inner join dealership d on d.id = fsc.dealership_id
group by d.id;

select count(fsc.id) 
from for_sale_cars fsc 
inner join dealership d on d.id = fsc.dealership_id
group by d.id
having count(fsc.id) >= 4;

select count(fsc.id) 
from for_sale_cars fsc 
inner join dealership d on d.id = fsc.dealership_id
where fsc.`year` > '2020-01-01'
group by d.id
having count(fsc.id) >= 4; 
