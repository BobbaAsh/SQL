SELECT first_name, last_name, AVG(DATEDIFF( r.return_date, r.rental_date )) AS avg_time FROM actor as A
LEFT JOIN film_actor as FA ON A.actor_id = FA.actor_id
LEFT JOIN film AS F on FA.film_id = F.film_id
LEFT JOIN inventory i ON F.film_id = i.film_id
LEFT JOIN rental r ON r.inventory_id = i.inventory_id
GROUP BY A.first_name, A.last_name DESC