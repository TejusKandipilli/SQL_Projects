--Using UNION to return all the rows from both 
--bird.california_sightings and bird.arizona_sightings

select * from bird.california_sightings 
UNION ALL
select * from bird.arizona_sightings
order by sighting_id


--Using UNION to return unique species from bird.california_sightings and
--bird.arizona_sightings

select sighting_id,scientific_name from bird.california_sightings  
UNION
select sighting_id,scientific_name from bird.arizona_sightings


--Using UNION to return all the unique combinations of 
--species and state name

select scientific_name,location_of_sighting from bird.california_sightings
UNION 
select scientific_name,'Arizona' as location_of_sighting from bird.arizona_sightings
UNION 
select scientific_name,'Florida' as location_of_sighting from bird.florida_sightings
order by location_of_sighting


--Using UNION to return all the bird sightings from 
--Arizona,California and Florida.

select * from bird.california_sightings
UNION 
select * from bird.arizona_sightings
UNION 
select observation_id,NULL as common_name,scientific_name,locality,sighting_datetime from bird.florida_sightings
order by sighting_id


--Using INTERSECT to the customer_id who jave placed orders

select customer_id from oes.customers 
INTERSECT 
select customer_id from oes.orders


--Using EXCEPT to return all the product_id which are not in stock.
select product_id from oes.products 
EXCEPT 
select product_id from oes.inventories
