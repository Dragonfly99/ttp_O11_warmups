SELECT payment_date 
From payment
WHERE payment_date > '2007-05-01'
ORDER BY payment_date DESC;

/*First we look at the payments table and filter the information by payment dates past  May 1 2007.  Then when want to return the result of the filter through just
the query. Finally, we sort the result from the latest date to the earliest date in the condition.*/


SELECT payment_id, payment_date
From payment
WHERE amount < 3;

/*Look at the payment table and filter the information to only have results less than 3. 
Then return the payment_id and payment_date of the filtered condition.*/


SELECT customer_id, email, active
From customer
WHERE store_id = 1 AND active = 0
ORDER BY last_update;


/*look at the custiomer table and fikter the data to meet 2 condtions: Only being store number 1 and not active users.  Return the  customer id, email address and, activity result of the filtered data
and finally  sort it by the last time it was updated*/


SELECT c.name, COUNT(f.film_id) as total
FROM film as f
JOIN film_category AS fc  ON f.film_id=fc.film_id
JOIN category AS c ON fc.category_id=c.category_id
GROUP BY c.category_id
ORDER BY total DESC ;


/*Join 3 tables, film, film_category, and and category.   
Now organize this information by the category id. Next return only the category name and and a count of the film ids and finally ordering it by the count
which goes by the alias, total*/  




SELECT *
FROM payment
WHERE amount > (SELECT AVG(amount) FROM payment);


/*I believe the subquery runs first. It looks at the payment table and then returns only the average amount from it. Then The query looks at the payment
table again and filters the subquery result based on amounts higher than the average. 
Fianlly it gives you everything after all the conditions are met.*/