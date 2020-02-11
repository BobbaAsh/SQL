WITH act_count AS 
(
    SELECT
    a.first_name
    ,a.last_name
    ,COUNT(*) nb_film
    FROM actor a 
    INNER JOIN film_actor  ON fa.actor_id = a.action_id
    GROUP BY 
    a.first_name
    ,a.last_name
)
SELECT * 
FROM act_count a
WHERE NOT EXISTS
;
-- film jamais joué 
SELECT 
f.title
,f.release_year
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON r.inventory_id = i.inventory_id
WHERE r.rental_id IS NULL;

-- temps moyen de restitution d'un film ?

SELECT AVG(DATEDIFF( return_date, rental_date )) AS avg_date FROM rental;

-- temps moyen de restitution d'un film par client

SELECT AVG(DATEDIFF( return_date, rental_date )) AS avg_date FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id
GROUP BY customer.first_name, customer.last_name
LIMIT 3 ;

-- Les Bons et les Mauvais client

SELECT AVG(DATEDIFF( return_date, rental_date )) AS avg_date FROM rental
INNER JOIN customer ON rental.customer_id = customer.customer_id
GROUP BY customer.first_name, customer.last_name
