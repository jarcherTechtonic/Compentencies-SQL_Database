-- Joins the meals and ingredients table by their respective ids, it'll be in the original order it was entered in
SELECT     i.name as ingredient, m.name as meal  
FROM       meal_ingredients mi    
RIGHT JOIN meals m       
  ON mi.meal_id       = m.id   
INNER JOIN ingredients i 
  ON mi.ingredient_id = i.id; 

-- Select all the ingredients for Eggs Benedict
SELECT     i.name as ingredient, m.name as meal  
FROM       meal_ingredients mi    
RIGHT JOIN meals m       
  ON mi.meal_id       = m.id   
INNER JOIN ingredients i 
  ON mi.ingredient_id = i.id 
  WHERE m.name =    "Eggs Benedict";

-- Select all the ingredients for the all these meals, along with their descriptions and order them by ascending meal names
SELECT i.name as ingredient, m.name as meal, m.description as "meal details"  
FROM meal_ingredients mi     
RIGHT JOIN meals m 
  ON mi.meal_id       = m.id    
INNER JOIN ingredients i 
  ON mi.ingredient_id = i.id  
  WHERE m.name = "Eggs Benedict" 
     OR m.name = "Burger n Fries" 
     OR m.name = "Mushroom Risotto" 
  ORDER BY m.name ASC;