-- write your queries here
-- query one
SELECT * FROM owners o
FULL OUTER JOIN vehicles v
ON o.id=v.owner_id;

-- query two
SELECT first_name, last_name,
COUNT(owner_id) FROM owners o
JOIN vehicles v on o.id=v.owner_id
GROUP BY (firstname, last_name)
ORDER BY first_name;

-- query three
SELECT first_name, last_name,
ROUND(AVG(price)) as average_price,
COUNT(owner_id)
FROM owners o
JOIN vehicles v on o.id=v.owner_id
GROUP BY 
(first_name, last_name)
HAVING
COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
ORDER BY first_name DESC;