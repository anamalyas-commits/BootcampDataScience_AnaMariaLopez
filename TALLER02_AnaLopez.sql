USE sakila;

# SELECT Y WHERE
## 1. Mostrar nombre y apellido de todos los clientes
### Esta consulta obtiene los nombres y apellidos de todos los clientes registrados en la tabla customer.
SELECT first_name, last_name
FROM customer;

## 2. Películas con duración mayor a 120 minutos
### Muestra las películas cuya duración (length) es superior a 120 minutos.
SELECT title, length 
FROM film 
WHERE length > 120;

# ORDER BY 
## 3. Ordenar clientes por apellido de la A a la Z
### Ordena la lista de clientes alfabéticamente por el campo last_name (apellido).
SELECT first_name, last_name
FROM customer
ORDER BY last_name ASC;

## 4. Top 5 películas más largas
### Devuelve las 5 películas con mayor duración, ordenadas de forma descendente.
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 5;

# INNER JOIN
## 5. Cantidad pagada y fecha del pago con nombre y apellido del cliente
### Une las tablas payment y customer para mostrar el monto pagado y la fecha del pago junto al nombre del cliente. 
SELECT
    c.first_name,
    c.last_name,
    p.amount,
    p.payment_date
FROM payment p
INNER JOIN customer c
    ON p.customer_id = c.customer_id;
    
## 6. Películas alquiladas
### Muestra las películas que han sido alquiladas, uniendo rental, inventory y film para obtener el título y la fecha de alquiler.
SELECT
SELECT
    r.rental_id,
    f.title,
    r.rental_date
FROM rental r
INNER JOIN inventory i
    ON r.inventory_id = i.inventory_id
INNER JOIN film f
    ON i.film_id = f.film_id;

# LEFT JOIN
## 7. Nombres y apellidos de clientes sin pagos
### Usa LEFT JOIN para listar los clientes que no tienen registros en la tabla payment (sin pagos realizados).
SELECT
    c.first_name,
    c.last_name
FROM customer c
LEFT JOIN payment p
    ON c.customer_id = p.customer_id
WHERE p.payment_id IS NULL;

## 8. Películas que no tienen actores
### Muestra las películas que no tienen actores asociados en la tabla film_actor.
SELECT
    f.title,
    f.length
FROM film f
LEFT JOIN film_actor fa
    ON f.film_id = fa.film_id
WHERE fa.actor_id IS NULL;

# INSERT, UPDATE, DELETE 
## 9. Insertar actor temporal
### Inserta un nuevo registro temporal en la tabla actor con la fecha actual.
INSERT INTO actor (first_name, last_name, last_update)
VALUES ('TEMPORAL', 'ACTOR', NOW());

## 10. Actualizar actor
### Actualiza el registro del actor temporal, cambiando su nombre y apellido.
UPDATE actor
SET first_name = 'ACTOR',
    last_name = 'ACTUALIZADO',
    last_update = NOW()
WHERE first_name = 'TEMPORAL'
AND last_name = 'ACTOR';

## 11. Eliminar actor
### Elimina el registro del actor actualizado para limpiar los datos de prueba.
DELETE FROM actor
WHERE first_name = 'ACTOR'
AND last_name = 'ACTUALIZADO';

SELECT * FROM actor