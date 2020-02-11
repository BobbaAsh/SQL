SELECT first_name, last_name, C.name, count(C.name) AS NFC FROM actor as A
LEFT JOIN film_actor as FA ON A.actor_id = FA.actor_id
LEFT JOIN film AS F on FA.film_id = F.film_id
LEFT JOIN film_category AS FC on F.film_id = FC.film_id
LEFT JOIN category AS C on FC.category_id = C.category_id
WHERE first_name = "Johnny" AND last_name = "LOLLOBRIGIDA"
GROUP BY C.name DESC;
