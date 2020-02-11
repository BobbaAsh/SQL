SELECT title, city FROM film f
LEFT JOIN inventory i on i.film_id =  f.film_id
LEFT JOIN rental r ON r.inventory_id = i.inventory_id
LEFT JOIN customer cu ON cu.customer_id = r.customer_id
LEFT JOIN address a ON a.address_id = cu.address_id
LEFT JOIN city ci ON ci.city_id = a.city_id
WHERE city = "Woodridge";