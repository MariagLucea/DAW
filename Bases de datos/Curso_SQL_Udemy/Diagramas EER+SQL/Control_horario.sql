-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ControldeHorario
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ControldeHorario
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ControldeHorario` DEFAULT CHARACTER SET utf8 ;
USE `ControldeHorario` ;

-- -----------------------------------------------------
-- Table `ControldeHorario`.`Estados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`Estados` (
  `Estado_Id` TINYINT(2) UNSIGNED NOT NULL,
  `Estado_Descripcion` VARCHAR(50) NULL,
  PRIMARY KEY (`Estado_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`Paises`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`Paises` (
  `Pais_id` TINYINT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Pais_Nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`Pais_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`Provincias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`Provincias` (
  `Provin_Id` MEDIUMINT(8) UNSIGNED NOT NULL,
  `Provin_PaisId` TINYINT(3) UNSIGNED NOT NULL,
  `Provin_Nombre` VARCHAR(60) NULL,
  PRIMARY KEY (`Provin_Id`),
  INDEX `FK_Provin_Pais_idx` (`Provin_PaisId` ASC) VISIBLE,
  CONSTRAINT `FK_Provin_Pais`
    FOREIGN KEY (`Provin_PaisId`)
    REFERENCES `ControldeHorario`.`Paises` (`Pais_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`Localidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`Localidades` (
  `Local_Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Local_ProvinId` MEDIUMINT(8) UNSIGNED NOT NULL,
  `Local_Nombre` VARCHAR(60) NULL,
  PRIMARY KEY (`Local_Id`),
  INDEX `FK_Local_Provin_idx` (`Local_ProvinId` ASC) VISIBLE,
  CONSTRAINT `FK_Local_Provin`
    FOREIGN KEY (`Local_ProvinId`)
    REFERENCES `ControldeHorario`.`Provincias` (`Provin_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`PoliticaHoraria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`PoliticaHoraria` (
  `PH_Id` SMALLINT(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PH_HorarioFlexible` BIT(1) NULL,
  `PH_Nombre` VARCHAR(45) NULL,
  `PH_Estado` BIT(1) NULL DEFAULT 1,
  PRIMARY KEY (`PH_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`Categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`Categorias` (
  `Categ_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Categ_Nombre` VARCHAR(60) NULL,
  PRIMARY KEY (`Categ_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`Sectores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`Sectores` (
  `Sector_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Sector_Nombre` VARCHAR(60) NULL,
  PRIMARY KEY (`Sector_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`Empleados`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`Empleados` (
  `Emp_Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Emp_Apellido` VARCHAR(60) NULL,
  `Emp_Nombre` VARCHAR(100) NULL,
  `Emp_FechaNac` DATE NULL,
  `Emp_FechaAlta` DATE NULL,
  `Emp_FechaBaja` DATE NULL,
  `Emp_EstadoId` TINYINT(2) UNSIGNED NULL DEFAULT 1,
  `Emp_LocalidadID` INT UNSIGNED NOT NULL,
  `Emp_CategoriaID` INT UNSIGNED NULL,
  `Emp_SectorID` INT UNSIGNED NULL,
  `Emp_Salario` DECIMAL(10,2) UNSIGNED NULL DEFAULT 0,
  `Emp_PoliticaHorariaID` SMALLINT(5) UNSIGNED NULL,
  `Emp_Domicilio` VARCHAR(150) NULL,
  `Emp_Email` VARCHAR(80) NULL,
  `Emp_Telefono` VARCHAR(20) NULL,
  PRIMARY KEY (`Emp_Id`),
  INDEX `FK_Emp_Estado_idx` (`Emp_EstadoId` ASC) VISIBLE,
  INDEX `FK_Emp_Local_idx` (`Emp_LocalidadID` ASC) VISIBLE,
  INDEX `FK_Emp_PH_idx` (`Emp_PoliticaHorariaID` ASC) VISIBLE,
  INDEX `FK_Emp_Categ_idx` (`Emp_CategoriaID` ASC) VISIBLE,
  INDEX `FK_Emp_Sector_idx` (`Emp_SectorID` ASC) VISIBLE,
  CONSTRAINT `FK_Emp_Estado`
    FOREIGN KEY (`Emp_EstadoId`)
    REFERENCES `ControldeHorario`.`Estados` (`Estado_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Emp_localidad`
    FOREIGN KEY (`Emp_LocalidadID`)
    REFERENCES `ControldeHorario`.`Localidades` (`Local_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Emp_PH`
    FOREIGN KEY (`Emp_PoliticaHorariaID`)
    REFERENCES `ControldeHorario`.`PoliticaHoraria` (`PH_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Emp_Categ`
    FOREIGN KEY (`Emp_CategoriaID`)
    REFERENCES `ControldeHorario`.`Categorias` (`Categ_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_Emp_Sector`
    FOREIGN KEY (`Emp_SectorID`)
    REFERENCES `ControldeHorario`.`Sectores` (`Sector_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`PoliticaHoraria_Detalle`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`PoliticaHoraria_Detalle` (
  `PHD_id` MEDIUMINT(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PHD_PHID` SMALLINT(5) UNSIGNED NOT NULL,
  `PHD_DiaSemana` TINYINT(1) UNSIGNED NULL,
  `PHD_HoraD` TIME NULL,
  `PHD_HoraH` TIME NULL,
  `PHD_Horas` TINYINT(2) UNSIGNED NULL DEFAULT 0,
  PRIMARY KEY (`PHD_id`),
  INDEX `FK_PHD_PH_idx` (`PHD_PHID` ASC) VISIBLE,
  CONSTRAINT `FK_PHD_PH`
    FOREIGN KEY (`PHD_PHID`)
    REFERENCES `ControldeHorario`.`PoliticaHoraria` (`PH_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`ControlHorario_Mov`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`ControlHorario_Mov` (
  `CHM_Id` BIGINT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `CHM_Fecha` DATE NULL,
  `CHM_Hora` TIME NULL,
  `CHM_EmpleadoID` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`CHM_Id`),
  INDEX `Fecha` (`CHM_Fecha` ASC) INVISIBLE,
  INDEX `FechaEmp` (`CHM_EmpleadoID` ASC) VISIBLE,
  CONSTRAINT `FK_CHM_Emp`
    FOREIGN KEY (`CHM_EmpleadoID`)
    REFERENCES `ControldeHorario`.`Empleados` (`Emp_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`ControlHorario_Res`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`ControlHorario_Res` (
  `CHR_Id` BIGINT(10) UNSIGNED NOT NULL,
  `CHR_Fecha` DATE NULL,
  `CHR_EmpleadoID` INT UNSIGNED NOT NULL,
  `CHR_Horas` TINYINT(2) NULL COMMENT 'En esta tabla tendremos datos de la tabla ControlHorario_Mov depurados por fecha, ejemplo el empleado sale y entra varias veces de la empresa y y se registra con la tarjeta en la primera tabla tendremos muchos registros en esta (ControlHorario_Res) solo el primer y ultimo del dia asi sabemos el numero total de horas trabajadas, esta operacion se podría programar con un procedimiento almacenado',
  PRIMARY KEY (`CHR_Id`),
  INDEX `Fecha` (`CHR_Fecha` ASC) INVISIBLE,
  INDEX `Empleado` (`CHR_EmpleadoID` ASC) VISIBLE,
  CONSTRAINT `FK_CHR_Emp`
    FOREIGN KEY (`CHR_EmpleadoID`)
    REFERENCES `ControldeHorario`.`Empleados` (`Emp_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`Infracciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`Infracciones` (
  `Infrac_Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `Infrac_Nombre` VARCHAR(60) NULL,
  PRIMARY KEY (`Infrac_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`ControlHorario_Nov`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`ControlHorario_Nov` (
  `CHN_Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `CHN_Fecha` DATE NULL,
  `CHN_InfraccionID` INT UNSIGNED NOT NULL,
  `CHN_EmpleadoID` INT UNSIGNED NOT NULL COMMENT 'En esta tabla recogemos novedades, como un empleado que ha llegado  tarde',
  `CHN_Horas` TINYINT(1) UNSIGNED NULL COMMENT 'Esta tabla recoge novedades, es decir circunstancias fuera de lo normal como un empleado que haya llegado tarde',
  `CHN_Minutos` TINYINT(3) UNSIGNED NULL,
  PRIMARY KEY (`CHN_Id`),
  INDEX `Fecha` (`CHN_Fecha` ASC) INVISIBLE,
  INDEX `Empleado` (`CHN_EmpleadoID` ASC) INVISIBLE,
  INDEX `FechaEmpleado` (`CHN_Fecha` ASC, `CHN_EmpleadoID` ASC) VISIBLE,
  INDEX `FK_CHK_Infracciones_idx` (`CHN_InfraccionID` ASC) VISIBLE,
  CONSTRAINT `FK_CHN_Emp`
    FOREIGN KEY (`CHN_EmpleadoID`)
    REFERENCES `ControldeHorario`.`Empleados` (`Emp_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CHK_Infracciones`
    FOREIGN KEY (`CHN_InfraccionID`)
    REFERENCES `ControldeHorario`.`Infracciones` (`Infrac_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`Novedades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`Novedades` (
  `Noved_Id` SMALLINT(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Noved_Descripcion` VARCHAR(60) NULL,
  PRIMARY KEY (`Noved_Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ControldeHorario`.`ControlHorario_Exc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ControldeHorario`.`ControlHorario_Exc` (
  `CHE_Id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `CHE_EmpleadoID` INT UNSIGNED NOT NULL,
  `CHE_FechaD` DATE NULL,
  `CHE_FechaH` DATE NULL,
  `CHE_NovedadId` SMALLINT(4) UNSIGNED NOT NULL,
  `CHE_Horas` SMALLINT(5) NULL COMMENT 'Es para evitar que un movimineto no habitual sea marcado como infracciones, ejemplo, determinadas horas justificadas por ir al medico',
  PRIMARY KEY (`CHE_Id`),
  INDEX `FK_CHE_Emp_idx` (`CHE_EmpleadoID` ASC) VISIBLE,
  INDEX `FK_CHE_Noved_idx` (`CHE_NovedadId` ASC) VISIBLE,
  CONSTRAINT `FK_CHE_Emp`
    FOREIGN KEY (`CHE_EmpleadoID`)
    REFERENCES `ControldeHorario`.`Empleados` (`Emp_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_CHE_Noved`
    FOREIGN KEY (`CHE_NovedadId`)
    REFERENCES `ControldeHorario`.`Novedades` (`Noved_Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
