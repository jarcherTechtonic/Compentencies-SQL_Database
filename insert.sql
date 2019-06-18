-- Insert statements for the meals table
INSERT INTO chezmoose.meals (id, menu_id, name, description, price) VALUES ('1', '1', 'Eggs benedict', 'Delicious eggs!', '9.99');
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

INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('1', 'pepper');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('1', 'ham');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('1', 'english muffin');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('1', 'hollandaise');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('1', 'poached egg');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('4', 'beef patty');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('4', 'bun');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('4', 'lettuce');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('4', 'tomato');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('4', 'pickles');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('4', 'onions');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('4', 'mayo');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('4', 'ketchup');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('4', 'mustard');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('8', 'cremini mushrooms');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('8', 'butter');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('8', 'chicken broth');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('8', 'arborio rice');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('8', 'onions');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('8', 'garlic');
INSERT INTO chezmoose.ingredients (meal_id, name) VALUES ('8', 'rosemary chicken breast');


INSERT INTO meal_ingredients (meal_id, ingredient_id) VALUES
  ( 
		(SELECT id FROM meals       WHERE NAME =     "Eggs benedict"), 
    (SELECT id FROM ingredients WHERE NAME =       "poached egg")
	),
  (
		(SELECT id FROM meals       WHERE NAME =     "Eggs benedict"), 
    (SELECT id FROM ingredients WHERE NAME =    "english muffin")
	),
  (
		(SELECT id FROM meals       WHERE NAME =     "Eggs benedict"), 
    (SELECT id FROM ingredients WHERE NAME =               "ham")
	),
  (
		(SELECT id FROM meals       WHERE NAME =     "Eggs benedict"), 
    (SELECT id FROM ingredients WHERE NAME =            "pepper")
	),
  (
		(SELECT id FROM meals       WHERE NAME =     "Eggs benedict"), 
		(SELECT id FROM ingredients WHERE NAME =       "hollandaise")
  );

INSERT INTO meal_ingredients (meal_id, ingredient_id) VALUES
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
  );