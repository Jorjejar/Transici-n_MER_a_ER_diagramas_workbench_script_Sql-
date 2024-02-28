-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Uno_a_uno.3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Uno_a_uno.3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Uno_a_uno.3` DEFAULT CHARACTER SET utf8 ;
USE `Uno_a_uno.3` ;

-- -----------------------------------------------------
-- Table `Uno_a_uno.3`.`CONDUCE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Uno_a_uno.3`.`CONDUCE` (
  `matricula` INT NOT NULL,
  `codemp` INT NULL,
  `fecha_inicio` INT NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Uno_a_uno.3`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Uno_a_uno.3`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Uno_a_uno.3`.`VEHICULOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Uno_a_uno.3`.`VEHICULOS` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
