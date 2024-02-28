-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Uno_a_uno
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Uno_a_uno
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Uno_a_uno` DEFAULT CHARACTER SET utf8 ;
USE `Uno_a_uno` ;

-- -----------------------------------------------------
-- Table `Uno_a_uno`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Uno_a_uno`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Uno_a_uno`.`VEHÍCULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Uno_a_uno`.`VEHÍCULO` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  `codemp` INT NOT NULL,
  `fecha_inicio` VARCHAR(45) NULL,
  PRIMARY KEY (`matricula`, `codemp`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
