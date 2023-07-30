use airbnb_madrid;
select * from table_airbnb_madrid;

#Numero total de airbnb
select count(salon_id) from table_airbnb_madrid;

#Numero total de propietarios
select count(distinct anfitrion_id) from table_airbnb_madrid;

#Airbnbs de casa entera con satisfaccion igual a 5, ordenados de menor a mayor precio.
select * from table_airbnb_madrid where tipo_salon='Casa Entera' and satisfacción_general=5 order by precio asc;

#Los 5 Airbnbs más caros y los 5 más baratos. 
select * from table_airbnb_madrid order by precio desc limit 5; 
select * from table_airbnb_madrid order by precio asc limit 5; 

#Cual ha sido el mayor y el menor tiempo de permanencia. 
select max(tiempo_permanencia) from table_airbnb_madrid; 
select min(tiempo_permanencia) from table_airbnb_madrid; 

#Numero de Airbnb por propietarios. 
SELECT DISTINCT anfitrion_id, COUNT(anfitrion_id) AS Airbnb_propietario FROM table_airbnb_madrid GROUP BY anfitrion_id ORDER BY Airbnb_propietario DESC;

#Precio medio por tipo de salon
select tipo_salon, avg(precio) as precio_medio from table_airbnb_madrid group by tipo_salon;

#Numero Airbnbs por tipo de salon
select tipo_salon, count(salon_id) as numero_airbnb from table_airbnb_madrid group by tipo_salon;

#Numero de airbnb por barrios
select distinct barrio, count(barrio) as numero_de_barrios from table_airbnb_madrid group by barrio;

#Tiempo medio de permanencia por tipo salon
select tipo_salon, round(avg(tiempo_permanencia),0) as tiempo_medio_de_permanencia from table_airbnb_madrid group by tipo_salon;

#Cuales son las provincias con el mayor precio promedio
select provincia, avg(precio) as precio_medio from table_airbnb_madrid group by provincia order by precio_medio desc;

#Cuales son las provincias con el mayor precio promedio, pero solo para Habitacion Privada
select provincia, avg(precio) as precio_medio from table_airbnb_madrid where tipo_salon='Habitacion Privada' group by provincia order by precio_medio desc;