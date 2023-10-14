-- insert los Angeles into the location talbe
INSERT INTO location VALUES(1,'Los Angeles','USA');

-- update the city_id in the shops table
UPDATE shops
SET city_id = 1
WHERE coffeeshop_id =1;

-- insert data to the suppliers table
INSERT INTO suppliers VALUES(1,'Beans and Barley','Arabica');
INSERT INTO suppliers VALUES(1,'Cool Beans','Robusta');