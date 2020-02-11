SELECT first_name, last_name FROM customer c
INNER JOIN rental r ON r.customer_id = c.customer_id
INNER JOIN inventory i on i.inventory_id =  r.inventory_id
INNER JOIN film f on f.film_id =  i.film_id
WHERE title = "ALABAMA DEVIL";