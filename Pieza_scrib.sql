-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema 5.7 - 2
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `5.7 - 2` ;

-- -----------------------------------------------------
-- Schema 5.7 - 2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `5.7 - 2` DEFAULT CHARACTER SET utf8 ;
USE `5.7 - 2` ;

-- -----------------------------------------------------
-- Table `5.7 - 2`.`PIEZA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `5.7 - 2`.`PIEZA` (
  `Cod-pieza` INT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Cod-pieza`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `5.7 - 2`.`P-P`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `5.7 - 2`.`P-P` (
  `funcion` VARCHAR(45) NOT NULL,
  `Cod-pieza-continente` INT NULL,
  `Cod-pieza-contenido` INT NULL,
  PRIMARY KEY (`Cod-pieza-contenido`, `Cod-pieza-continente`),
  CONSTRAINT `fk_P-P_PIEZA`
    FOREIGN KEY (`Cod-pieza-continente`)
    REFERENCES `5.7 - 2`.`PIEZA` (`Cod-pieza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_P-P_PIEZA1`
    FOREIGN KEY (`Cod-pieza-contenido`)
    REFERENCES `5.7 - 2`.`PIEZA` (`Cod-pieza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_P-P_PIEZA1_idx` ON `5.7 - 2`.`P-P` (`Cod-pieza-contenido` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;