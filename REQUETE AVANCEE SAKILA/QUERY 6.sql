SELECT title, rating, CASE rating
    WHEN 'PG-13' THEN 'Oui'
    WHEN 'NC-17' THEN 'Non'
END AS yesorno
FROM film
WHERE rating = 'PG-13' or rating = 'NC-17';