SELECT f.title, a.first_name, a.last_name FROM film f
INNER JOIN film_actor fa ON fa.film_id = f.film_id
INNER JOIN actor a ON a.actor_id = fa.actor_id
WHERE a.first_name = 'JENNIFER' and a.last_name = 'DAVIS' and f.release_year = 2006;