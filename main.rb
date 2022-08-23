
# READ
https://www.airbnb.com/flats

SELECT * FROM flats;

https://www.airbnb.com/flats/43

SELECT * FROM flats WHERE id = 43;

https://www.airbnb.com/flats/search?location=Paris&price_min=50&price_max=100&s=1

# THE TRICK (column table_name filters)
SELECT * FROM flats
SELECT * FROM flats
WHERE location = 'Paris'
AND price >= 50
AND price <= 100
AND status = 'available'
ORDER BY price ASC;

# Usuing SQLite3
# READ = (SELECT ... FROM table_name)
# SELECT * FROM doctors;
# SELECT * FROM doctors WHERE id = 1;
# SELECT name FROM doctors WHERE name LIKE '%John%';


# CREATE = (INSERT INTO table_name VALUES ...)
# INSERT INTO doctors (name, age, specialty) VALUES ('Ashley Iwamoto Lira', 45, 'Pediatrics');


# UPDATE = (UPDATE table_name SET ... WHERE)
# UPDATE doctors SET name = 'Javier Pedro Zúñiga' WHERE id = 1;

# DELETE = (DELETE FROM ... WHERE)
# DELETE FROM doctors WHERE id = 1;
# DELETE FROM doctors WHERE name = 'Javier Pedro Zúñiga';
# DELETE FROM doctors WHERE name = 'Javier Pedro Zúñiga' AND specialty = 'Pediatrics';
