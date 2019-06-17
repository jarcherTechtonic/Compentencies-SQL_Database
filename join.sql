-- Sometimes we want information from multiple tables that's displayed as one table
-- A convenient way to do this is with something called table JOINS

-- if you wanted to query a new table from multiple tables without keeping any of the
-- non-relational data, you'd used an inner join
-- First let's recreate a couple tables, but with foreign keys to reference other table's primaries'
CREATE TABLE IF NOT EXISTS join_inventory (
  item_id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
  item_type        VARCHAR(20),
  item_name        VARCHAR(40) NOT NULL,
  expires          DATE NOT NULL,
  number_of_units  INT,
  last_updated     TIMESTAMP 
                   DEFAULT CURRENT_TIMESTAMP ON UPDATE
                   CURRENT_TIMESTAMP,
  PRIMARY KEY (item_id)
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS join_drinks (
	drink_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  inventory_id INT, -- foreign key 
  drink_type VARCHAR(20),
  drink_name VARCHAR(30),
  expires DATE NOT NULL,
  number_of_units INT,
  last_updated TIMESTAMP
        DEFAULT CURRENT_TIMESTAMP ON UPDATE 
                CURRENT_TIMESTAMP,
	PRIMARY KEY (drink_id),
  FOREIGN KEY (inventory_id) REFERENCES meals(meal_id)
)ENGINE=InnoDB DEFAULT CHARSET=UTF8;