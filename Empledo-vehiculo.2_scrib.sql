-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Uno_a_uno.2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Uno_a_uno.2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Uno_a_uno.2` DEFAULT CHARACTER SET utf8 ;
USE `Uno_a_uno.2` ;

-- -----------------------------------------------------
-- Table `Uno_a_uno.2`.`VEHÍCULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Uno_a_uno.2`.`VEHÍCULO` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Uno_a_uno.2`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Uno_a_uno.2`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `matricula` INT NULL,
  `fecha_inicio` DATE NOT NULL,
  PRIMARY KEY (`codemp`, `fecha_inicio`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
