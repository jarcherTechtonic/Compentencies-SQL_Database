DROP DATABASE IF EXISTS chez_moose;
-- SELECT SCHEMA chez_moose;
USE chez_moose;

DROP TABLE IF EXISTS menus;

CREATE TABLE menus(
    id      BIGINT NOT NULL AUTO_INCREMENT,
    title   VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

DROP TABLE IF EXISTS meals;
CREATE TABLE meals(
    id                    BIGINT NOT NULL AUTO_INCREMENT,
    menu_id               BIGINT,
    name                  VARCHAR(100),
    description           VARCHAR(500),
    price                 DECIMAL(9,2),
    PRIMARY KEY                   (id),
    index menu_id_idx(menu_id),
    FOREIGN KEY(menu_id)  REFERENCES menus(id) ON DELETE CASCADE,
    unique key menu_meals (menu_id, name)
);

DROP TABLE IF EXISTS meal_ingredients;
CREATE TABLE meal_ingredients(
    id            BIGINT NOT NULL AUTO_INCREMENT,
    meal_id       BIGINT,
    ingredient_id BIGINT,
    PRIMARY KEY(id),
    index meal_id_idx(meal_id),
    index ingredient_id_idx(ingredient_id)
);

DROP TABLE IF EXISTS ingredients;
CREATE TABLE ingredients(
    id                   BIGINT NOT NULL AUTO_INCREMENT,
    meal_id              BIGINT,
    name                 VARCHAR(100),
    PRIMARY KEY                  (id),
    index meal_id_idx(meal_id),
    FOREIGN KEY(meal_id) REFERENCES meals(id) ON DELETE CASCADE
);