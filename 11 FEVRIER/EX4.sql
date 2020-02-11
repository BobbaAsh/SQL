SELECT first_name, last_name, SUM(p.amount) AS Argent_depense FROM customer AS c
LEFT JOIN payment AS p ON c.customer_id = p.customer_id
LEFT JOIN rental as r ON p.rental_id = r.rental_id
GROUP BY c.customer_id
ORDER BY Argent_depense desc;