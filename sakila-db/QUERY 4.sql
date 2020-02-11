SELECT rental_date FROM rental
WHERE (MONTH(rental_date) BETWEEN '4' AND '5') ORDER BY rental_date ASC;