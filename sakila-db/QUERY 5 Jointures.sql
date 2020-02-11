SELECT title, DATEDIFF(return_date,rental_date ) AS dd FROM film f
LEFT JOIN inventory i on f.film_id =  i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
WHERE DATEDIFF(return_date,rental_date ) >= 1 ORDER BY dd ASC LIMIT 10;