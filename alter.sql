ALTER TABLE `chezmoose`.`ingredients`
DROP FOREIGN KEY `ingredients_ibfk_1`;
ALTER TABLE `chezmoose`.`ingredients`
DROP COLUMN `meal_id`,
DROP INDEX `meal_id_idx` ;
;
