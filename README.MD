# THUC HANH POSTGRESQL `COFFEE`

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
  ```

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
