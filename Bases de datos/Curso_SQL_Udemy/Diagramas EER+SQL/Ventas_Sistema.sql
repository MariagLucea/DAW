-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ventasSistema
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ventasSistema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ventasSistema` DEFAULT CHARACTER SET utf8 ;
USE `ventasSistema` ;

-- -----------------------------------------------------
-- Table `ventasSistema`.`Proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventasSistema`.`Proveedores` (
  `Prov_Id` INT NOT NULL AUTO_INCREMENT,
  `Prod_Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`Prov_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventasSistema`.`Precios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventasSistema`.`Precios` (
  `Precios_Id` INT NOT NULL AUTO_INCREMENT,
  `Precios_ProdId` INT NULL,
  `Precios_Valor` DECIMAL(10,3) UNSIGNED NOT NULL,
  PRIMARY KEY (`Precios_Id`),
  UNIQUE INDEX `Precios_ProdId_UNIQUE` (`Precios_ProdId` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventasSistema`.`Productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventasSistema`.`Productos` (
  `Prod_Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Prod_Descripcion` VARCHAR(60) NULL,
  `Prod_Color` VARCHAR(45) NULL,
  `Prod_ProvId` INT NULL,
  `Precios_Precios_Id` INT NOT NULL,
  PRIMARY KEY (`Prod_Id`),
  INDEX `fk_Productos_Proveedores_idx` (`Prod_ProvId` ASC) VISIBLE,
  INDEX `fk_Productos_Precios1_idx` (`Precios_Precios_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Productos_Proveedores`
    FOREIGN KEY (`Prod_ProvId`)
    REFERENCES `ventasSistema`.`Proveedores` (`Prov_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Productos_Precios1`
    FOREIGN KEY (`Precios_Precios_Id`)
    REFERENCES `ventasSistema`.`Precios` (`Precios_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventasSistema`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventasSistema`.`Clientes` (
  `Cli_Id` INT NOT NULL AUTO_INCREMENT,
  `Cli_nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`Cli_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventasSistema`.`Categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventasSistema`.`Categorias` (
  `Categ_Id` INT NOT NULL,
  `Categ_Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`Categ_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventasSistema`.`Productos_has_Categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventasSistema`.`Productos_has_Categorias` (
  `Productos_Prod_Id` INT UNSIGNED NOT NULL,
  `Categorias_Categ_Id` INT NOT NULL,
  PRIMARY KEY (`Productos_Prod_Id`, `Categorias_Categ_Id`),
  INDEX `fk_Productos_has_Categorias_Categorias1_idx` (`Categorias_Categ_Id` ASC) VISIBLE,
  INDEX `fk_Productos_has_Categorias_Productos1_idx` (`Productos_Prod_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Productos_has_Categorias_Productos1`
    FOREIGN KEY (`Productos_Prod_Id`)
    REFERENCES `ventasSistema`.`Productos` (`Prod_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Productos_has_Categorias_Categorias1`
    FOREIGN KEY (`Categorias_Categ_Id`)
    REFERENCES `ventasSistema`.`Categorias` (`Categ_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventasSistema`.`Ventas_Enc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventasSistema`.`Ventas_Enc` (
  `VentasE_id` BIGINT(10) NOT NULL,
  `VentasE_Fecha` DATE NULL,
  `VentasE_CliId` INT NULL,
  `VentasE_Total` DECIMAL(10,2) NULL,
  `Clientes_Cli_Id` INT NOT NULL,
  PRIMARY KEY (`VentasE_id`, `Clientes_Cli_Id`),
  INDEX `fk_Ventas_Enc_Clientes1_idx` (`Clientes_Cli_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Ventas_Enc_Clientes1`
    FOREIGN KEY (`Clientes_Cli_Id`)
    REFERENCES `ventasSistema`.`Clientes` (`Cli_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ventasSistema`.`Ventas_Detalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ventasSistema`.`Ventas_Detalle` (
  `VentasD_Id` BIGINT(10) NOT NULL AUTO_INCREMENT,
  `VentasD_EncId` BIGINT(10) NULL,
  `VentasD_ProdId` INT NULL,
  `VentasD_Cantidad` MEDIUMINT(5) NULL,
  `Ventas_Enc_VentasE_id` BIGINT(10) NOT NULL,
  `Ventas_Enc_Clientes_Cli_Id` INT NOT NULL,
  `Productos_Prod_Id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`VentasD_Id`),
  INDEX `fk_Ventas_Detalle_Ventas_Enc1_idx` (`Ventas_Enc_VentasE_id` ASC, `Ventas_Enc_Clientes_Cli_Id` ASC) VISIBLE,
  INDEX `fk_Ventas_Detalle_Productos1_idx` (`Productos_Prod_Id` ASC) VISIBLE,
  CONSTRAINT `fk_Ventas_Detalle_Ventas_Enc1`
    FOREIGN KEY (`Ventas_Enc_VentasE_id` , `Ventas_Enc_Clientes_Cli_Id`)
    REFERENCES `ventasSistema`.`Ventas_Enc` (`VentasE_id` , `Clientes_Cli_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ventas_Detalle_Productos1`
    FOREIGN KEY (`Productos_Prod_Id`)
    REFERENCES `ventasSistema`.`Productos` (`Prod_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
