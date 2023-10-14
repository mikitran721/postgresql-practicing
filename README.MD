# THUC HANH POSTGRESQL `COFFEE`

-- DROP TABLES

````sql
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS shops CASCADE;
DROP TABLE IF EXISTS locations CASCADE;
DROP TABLE IF EXISTS suppliers CASCADE;```


-- CREATE TABLES ========================================

- tao table
- ```sql
  -- create employees table
  CREATE TABLE employees(
  	employee_id INT PRIMARY KEY,
  	first_name VARCHAR(50),
  	last_name VARCHAR(50),
  	email VARCHAR(50),
  	hire_date DATE,
  	gender VARCHAR(1),
  	salary INT,
  	coffeeshop_id INT
  );

    -- create shops table
    CREATE TABLE shops(
    coffeeshop_id INT PRIMARY KEY,
    coffeeshop_name VARCHAR(50),
    city_id INT
    );
````

- Them khoai ngoai cho `employees`

```sql
ALTER TABLE employees
ADD FOREIGN KEY (coffeeshop_id)
REFERENCES shops(coffeeshop_id)
ON DELETE SET NULL;
```

- Them table & cap nhat foreign key

```sql
-- create location table
CREATE TABLE location(
	city_id INT PRIMARY KEY,
	city VARCHAR(50),
	country VARCHAR(50)
);

-- Add foreign key to shops table
ALTER TABLE shops
ADD FOREIGN KEY (city_id)
REFERENCES location(city_id)
ON DELETE SET NULL;

-- Create suppliers table
CREATE TABLE suppliers(
	coffeeshop_id INT,
	supplier_name VARCHAR(40),
	coffee_type VARCHAR(20),
	PRIMARY KEY (coffeeshop_id, supplier_name),
	FOREIGN KEY (coffeeshop_id) REFERENCES shops(coffeeshop_id)
	ON DELETE CASCADE
);
```

# INSER INTO DATA

- for table `employees`

```sql
INSERT INTO employees VALUES (501559, 'Carson', 'Mosconi', 'cmosconi0@census.gov', '2015/08/29', 'M', 32973, NULL);
INSERT INTO employees VALUES (144108, 'Khalil', 'Corr', 'kcorr1@github.io', '2014/04/23', 'M', 52802, NULL);
```

- for table `shops`

```sql
INSERT INTO shops VALUES(1, 'Common Grounds', NULL);
```

- update `coffeeshop_id`

```sql
-- set coffeeshop_id for the first two employees
UPDATE employees
SET coffeeshop_id =1
WHERE employee_id IN (501559,144108)
```
