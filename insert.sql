-- Insert statements for the menus table
INSERT INTO chezmoose.menus (title) VALUES('Breakfast');
INSERT INTO chezmoose.menus (title) VALUES('Lunch');
INSERT INTO chezmoose.menus (title) VALUES('Dinner');
INSERT INTO chezmoose.menus (title) VALUES('Happy Hour');

-- Insert statements for the meals table
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('1', '1', 'Eggs Benedict', 'Delicious eggs!', '9.99');
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('2', '1', 'Huevos Rancheros', 'Delicious chiles!', '12.99');
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('3', '1', 'French Toast', 'Delicious french toast!', '7.99');
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('4', '2', 'Burger n Fries', 'Delicious Angus beef!', '15.99');
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('5', '2', 'Spicy Tuna Rolls', 'So Spicy!', '11.79');
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('6', '2', 'Quesdilla', 'Mmmm, cheesy!', '9.99');
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('7', '3', 'Filet Mignon', 'How posh', '22.99');
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('8', '3', 'Mushroom Risotto', 'When did it get so expensive?', '19.99');
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('9', '3', 'Chicken Tenders', 'For those who refuse to grow up.', '13.99');
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('10', '4', 'Moose Margarita', 'A Moosearita if you will!', '6.99');
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('11', '4', 'Red Wine', 'To drown away sorrows with.', '9.99');
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('12', '4', 'Appeteasers', 'A collection of the best things not important enough to make the main menus!', '12.99');

-- Insert statements for the ingredients table
INSERT INTO chezmoose.ingredients (name) VALUES ('pepper');
INSERT INTO chezmoose.ingredients (name) VALUES ('ham');
INSERT INTO chezmoose.ingredients (name) VALUES ('english muffin');
INSERT INTO chezmoose.ingredients (name) VALUES ('hollandaise');
INSERT INTO chezmoose.ingredients (name) VALUES ('poached egg');
INSERT INTO chezmoose.ingredients (name) VALUES ('beef patty');
INSERT INTO chezmoose.ingredients (name) VALUES ('bun');
INSERT INTO chezmoose.ingredients (name) VALUES ('lettuce');
INSERT INTO chezmoose.ingredients (name) VALUES ('tomato');
INSERT INTO chezmoose.ingredients (name) VALUES ('pickles');
INSERT INTO chezmoose.ingredients (name) VALUES ('onions');
INSERT INTO chezmoose.ingredients (name) VALUES ('mayo');
INSERT INTO chezmoose.ingredients (name) VALUES ('ketchup');
INSERT INTO chezmoose.ingredients (name) VALUES ('mustard');
INSERT INTO chezmoose.ingredients (name) VALUES ('cremini mushrooms');
INSERT INTO chezmoose.ingredients (name) VALUES ('butter');
INSERT INTO chezmoose.ingredients (name) VALUES ('chicken broth');
INSERT INTO chezmoose.ingredients (name) VALUES ('arborio rice');
INSERT INTO chezmoose.ingredients (name) VALUES ('onions');
INSERT INTO chezmoose.ingredients (name) VALUES ('garlic');
INSERT INTO chezmoose.ingredients (name) VALUES ('rosemary chicken');

-- Insert statements for the meal_ingredients table, specifically for Egg Benedict
INSERT INTO meal_ingredients (meal_id, ingredient_id) 
VALUES
( 
  (SELECT id FROM meals       WHERE NAME =     "Eggs Benedict"), 
  (SELECT id FROM ingredients WHERE NAME =       "poached egg")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Eggs Benedict"), 
  (SELECT id FROM ingredients WHERE NAME =    "english muffin")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Eggs Benedict"), 
  (SELECT id FROM ingredients WHERE NAME =               "ham")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Eggs Benedict"), 
  (SELECT id FROM ingredients WHERE NAME =            "pepper")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Eggs Benedict"), 
  (SELECT id FROM ingredients WHERE NAME =       "hollandaise")
),
( 
  (SELECT id FROM meals       WHERE NAME =     "Burger n Fries"), 
  (SELECT id FROM ingredients WHERE NAME =         "beef patty")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Burger n Fries"), 
  (SELECT id FROM ingredients WHERE NAME =                "bun")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Burger n Fries"), 
  (SELECT id FROM ingredients WHERE NAME =            "lettuce")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Burger n Fries"), 
  (SELECT id FROM ingredients WHERE NAME =             "tomato")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Burger n Fries"), 
  (SELECT id FROM ingredients WHERE NAME =            "pickles")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Burger n Fries"), 
  (SELECT id FROM ingredients WHERE NAME =             "onions")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Burger n Fries"), 
  (SELECT id FROM ingredients WHERE NAME =               "mayo")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Burger n Fries"), 
  (SELECT id FROM ingredients WHERE NAME =            "ketchup")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Burger n Fries"), 
  (SELECT id FROM ingredients WHERE NAME =            "mustard")
),
( 
  (SELECT id FROM meals       WHERE NAME =     "Mushroom Risotto"), 
  (SELECT id FROM ingredients WHERE NAME =           "beef patty")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Mushroom Risotto"), 
  (SELECT id FROM ingredients WHERE NAME =   "cremeini mushrooms")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Mushroom Risotto"), 
  (SELECT id FROM ingredients WHERE NAME =               "butter")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Mushroom Risotto"), 
  (SELECT id FROM ingredients WHERE NAME =        "chicken broth")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Mushroom Risotto"), 
  (SELECT id FROM ingredients WHERE NAME =         "arborio rice")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Mushroom Risotto"), 
  (SELECT id FROM ingredients WHERE NAME =               "onions")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Mushroom Risotto"), 
  (SELECT id FROM ingredients WHERE NAME =               "garlic")
),
(
  (SELECT id FROM meals       WHERE NAME =     "Mushroom Risotto"), 
  (SELECT id FROM ingredients WHERE NAME =     "rosemary chicken")
);