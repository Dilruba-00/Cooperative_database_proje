-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema cooperative_database_proje
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cooperative_database_proje
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cooperative_database_proje` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `cooperative_database_proje` ;

-- -----------------------------------------------------
-- Table `cooperative_database_proje`.`apartment_information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cooperative_database_proje`.`apartment_information` (
  `id_apartment_information` CHAR(5) NOT NULL,
  `apartment_name` VARCHAR(15) NOT NULL,
  `apartment_address` VARCHAR(255) NOT NULL,
  `apartment_floor_number` VARCHAR(5) NOT NULL,
  `number_of_apartment` VARCHAR(5) NOT NULL,
  PRIMARY KEY (`id_apartment_information`, `apartment_name`),
  UNIQUE INDEX `idapartment_information_UNIQUE` (`id_apartment_information` ASC) VISIBLE,
  UNIQUE INDEX `apartment_informationcol_UNIQUE` (`apartment_name` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cooperative_database_proje`.`member`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cooperative_database_proje`.`member` (
  `id_member` CHAR(11) NOT NULL,
  `member_name` VARCHAR(45) NOT NULL,
  `member_surname` VARCHAR(45) NOT NULL,
  `member_phone` CHAR(15) NOT NULL,
  `member_email` VARCHAR(45) NOT NULL,
  `member_address` VARCHAR(255) NOT NULL,
  `member_province` VARCHAR(45) NOT NULL,
  `member_state` VARCHAR(45) NOT NULL,
  `home_information_id_home_information` CHAR(5) NOT NULL,
  `home_information_door_number` VARCHAR(10) NOT NULL,
  `expenses_id_expenses` CHAR(5) NOT NULL,
  PRIMARY KEY (`id_member`, `home_information_id_home_information`, `home_information_door_number`, `expenses_id_expenses`),
  UNIQUE INDEX `id_member_UNIQUE` (`id_member` ASC) VISIBLE,
  UNIQUE INDEX `member_email_UNIQUE` (`member_email` ASC) VISIBLE,
  INDEX `fk_member_home_information1_idx` (`home_information_id_home_information` ASC, `home_information_door_number` ASC) VISIBLE,
  INDEX `fk_member_expenses1_idx` (`expenses_id_expenses` ASC) VISIBLE,
  CONSTRAINT `fk_member_home_information1`
    FOREIGN KEY (`home_information_id_home_information` , `home_information_door_number`)
    REFERENCES `cooperative_database_proje`.`home_information` (`id_home_information` , `door_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_member_expenses1`
    FOREIGN KEY (`expenses_id_expenses`)
    REFERENCES `cooperative_database_proje`.`expenses` (`id_expenses`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cooperative_database_proje`.`home_information`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cooperative_database_proje`.`home_information` (
  `id_home_information` CHAR(5) NOT NULL,
  `door_number` VARCHAR(10) NOT NULL,
  `number_of_rooms` VARCHAR(10) NOT NULL,
  `square_meters` VARCHAR(10) NOT NULL,
  `rent_money` VARCHAR(11) NULL DEFAULT NULL,
  `FK_iid_member` CHAR(11) NOT NULL,
  `FK_apartment_name` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id_home_information`, `door_number`),
  UNIQUE INDEX `id_home_information_UNIQUE` (`id_home_information` ASC) VISIBLE,
  UNIQUE INDEX `door_number_UNIQUE` (`door_number` ASC) VISIBLE,
  INDEX `FK_idd_member_idx` (`FK_iid_member` ASC) VISIBLE,
  INDEX `FK_apartment_name_idx` (`FK_apartment_name` ASC) VISIBLE,
  CONSTRAINT `FK_apartment_name`
    FOREIGN KEY (`FK_apartment_name`)
    REFERENCES `cooperative_database_proje`.`apartment_information` (`apartment_name`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `FK_idd_member`
    FOREIGN KEY (`FK_iid_member`)
    REFERENCES `cooperative_database_proje`.`member` (`id_member`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cooperative_database_proje`.`lease`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cooperative_database_proje`.`lease` (
  `id_lease` CHAR(5) NOT NULL,
  `rent_money` VARCHAR(11) NOT NULL,
  `deposit` VARCHAR(10) NULL DEFAULT NULL,
  `start_date` DATE NOT NULL,
  `end_date` DATE NOT NULL,
  `late_fee` VARCHAR(5) NULL DEFAULT NULL,
  `square_meters` VARCHAR(10) NOT NULL,
  `FK_id_member` CHAR(11) NOT NULL,
  `FK_door_number` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id_lease`),
  INDEX `FK_id_memberr_idx` (`FK_id_member` ASC) VISIBLE,
  INDEX `FK_door_numberr_idx` (`FK_door_number` ASC) VISIBLE,
  CONSTRAINT `FK_door_numberr`
    FOREIGN KEY (`FK_door_number`)
    REFERENCES `cooperative_database_proje`.`home_information` (`door_number`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `FK_id_memberr`
    FOREIGN KEY (`FK_id_member`)
    REFERENCES `cooperative_database_proje`.`member` (`id_member`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cooperative_database_proje`.`tenant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cooperative_database_proje`.`tenant` (
  `id_tenant` CHAR(5) NOT NULL,
  `tenant_name` VARCHAR(45) NOT NULL,
  `tenant_surname` VARCHAR(45) NOT NULL,
  `tenant_email` VARCHAR(45) NOT NULL,
  `tenant_phone` CHAR(15) NOT NULL,
  `FK_iid_lease` CHAR(5) NOT NULL,
  `home_information_id_home_information` CHAR(5) NOT NULL,
  `home_information_door_number` VARCHAR(10) NOT NULL,
  `apartment_information_id_apartment_information` CHAR(5) NOT NULL,
  `apartment_information_apartment_name` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`id_tenant`, `home_information_id_home_information`, `home_information_door_number`, `apartment_information_id_apartment_information`, `apartment_information_apartment_name`),
  UNIQUE INDEX `id_tenant_UNIQUE` (`id_tenant` ASC) VISIBLE,
  UNIQUE INDEX `tenant_email_UNIQUE` (`tenant_email` ASC) VISIBLE,
  UNIQUE INDEX `tenant_phone_UNIQUE` (`tenant_phone` ASC) VISIBLE,
  INDEX `FK_iid_lease_idx` (`FK_iid_lease` ASC) VISIBLE,
  INDEX `fk_tenant_home_information1_idx` (`home_information_id_home_information` ASC, `home_information_door_number` ASC) VISIBLE,
  INDEX `fk_tenant_apartment_information1_idx` (`apartment_information_id_apartment_information` ASC, `apartment_information_apartment_name` ASC) VISIBLE,
  CONSTRAINT `FK_iid_lease`
    FOREIGN KEY (`FK_iid_lease`)
    REFERENCES `cooperative_database_proje`.`lease` (`id_lease`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_tenant_home_information1`
    FOREIGN KEY (`home_information_id_home_information` , `home_information_door_number`)
    REFERENCES `cooperative_database_proje`.`home_information` (`id_home_information` , `door_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tenant_apartment_information1`
    FOREIGN KEY (`apartment_information_id_apartment_information` , `apartment_information_apartment_name`)
    REFERENCES `cooperative_database_proje`.`apartment_information` (`id_apartment_information` , `apartment_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cooperative_database_proje`.`expenses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cooperative_database_proje`.`expenses` (
  `id_expenses` CHAR(5) NOT NULL,
  `electricity` VARCHAR(5) NULL DEFAULT NULL,
  `water` VARCHAR(5) NULL DEFAULT NULL,
  `fuel` VARCHAR(5) NOT NULL,
  `natural_gas` VARCHAR(5) NULL DEFAULT NULL,
  `dues` VARCHAR(5) NOT NULL,
  `FK_member_id_` CHAR(11) NOT NULL,
  `FK_id_tenant` CHAR(5) NULL DEFAULT NULL,
  PRIMARY KEY (`id_expenses`),
  UNIQUE INDEX `id_expenses_UNIQUE` (`id_expenses` ASC) VISIBLE,
  INDEX `FK_member_id__idx` (`FK_member_id_` ASC) VISIBLE,
  INDEX `FK_id_tenant_idx` (`FK_id_tenant` ASC) VISIBLE,
  CONSTRAINT `FK_id_tenant`
    FOREIGN KEY (`FK_id_tenant`)
    REFERENCES `cooperative_database_proje`.`tenant` (`id_tenant`),
  CONSTRAINT `FK_member_id_`
    FOREIGN KEY (`FK_member_id_`)
    REFERENCES `cooperative_database_proje`.`member` (`id_member`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cooperative_database_proje`.`meetings`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cooperative_database_proje`.`meetings` (
  `id_meetings` CHAR(5) NOT NULL,
  `meeting_date_` DATE NOT NULL,
  `decision` VARCHAR(255) NULL DEFAULT NULL,
  `FK_id_member_manager` CHAR(11) NOT NULL,
  PRIMARY KEY (`id_meetings`),
  UNIQUE INDEX `id_meetings_UNIQUE` (`id_meetings` ASC) VISIBLE,
  INDEX `FK_id_member__idx` (`FK_id_member_manager` ASC) VISIBLE,
  CONSTRAINT `FK_id_member_manager`
    FOREIGN KEY (`FK_id_member_manager`)
    REFERENCES `cooperative_database_proje`.`member` (`id_member`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cooperative_database_proje`.`payments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cooperative_database_proje`.`payments` (
  `id_payment` CHAR(5) NOT NULL,
  `payment_amount` VARCHAR(10) NULL DEFAULT NULL,
  `advance_payment` VARCHAR(10) NULL DEFAULT NULL,
  `payment_billing_date` DATE NOT NULL,
  `payment_due_date` DATE NOT NULL,
  `payments_delay_fine` VARCHAR(10) NULL DEFAULT NULL,
  `FK_member_id` CHAR(11) NOT NULL,
  PRIMARY KEY (`id_payment`),
  UNIQUE INDEX `id_payment_UNIQUE` (`id_payment` ASC) VISIBLE,
  INDEX `FK_member_id_idx` (`FK_member_id` ASC) VISIBLE,
  CONSTRAINT `FK_member_id`
    FOREIGN KEY (`FK_member_id`)
    REFERENCES `cooperative_database_proje`.`member` (`id_member`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cooperative_database_proje`.`visitor_information_`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cooperative_database_proje`.`visitor_information_` (
  `id_visitor_information` CHAR(5) NOT NULL,
  `visitor_information_login` DATE NOT NULL,
  `visitor_information_exit` DATE NOT NULL,
  `visitor_information_name` VARCHAR(45) NOT NULL,
  `visitor_information_surname` VARCHAR(45) NOT NULL,
  `visitor_information_phone` CHAR(15) NOT NULL,
  `FK_id_membeer_` CHAR(11) NOT NULL,
  `FK_door_numbeer_` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id_visitor_information`),
  UNIQUE INDEX `id_visitor_information_UNIQUE` (`id_visitor_information` ASC) VISIBLE,
  INDEX `FK_id_membeer__idx` (`FK_id_membeer_` ASC) VISIBLE,
  INDEX `FK_door_numbeer__idx` (`FK_door_numbeer_` ASC) VISIBLE,
  CONSTRAINT `FK_door_numbeer_`
    FOREIGN KEY (`FK_door_numbeer_`)
    REFERENCES `cooperative_database_proje`.`home_information` (`door_number`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `FK_id_membeer_`
    FOREIGN KEY (`FK_id_membeer_`)
    REFERENCES `cooperative_database_proje`.`member` (`id_member`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cooperative_database_proje`.`member_has_visitor_information_`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cooperative_database_proje`.`member_has_visitor_information_` (
  `member_id_member` CHAR(11) NOT NULL,
  `member_home_information_id_home_information` CHAR(5) NOT NULL,
  `member_home_information_door_number` VARCHAR(10) NOT NULL,
  `member_expenses_id_expenses` CHAR(5) NOT NULL,
  `visitor_information__id_visitor_information` CHAR(5) NOT NULL,
  PRIMARY KEY (`member_id_member`, `member_home_information_id_home_information`, `member_home_information_door_number`, `member_expenses_id_expenses`, `visitor_information__id_visitor_information`),
  INDEX `fk_member_has_visitor_information__visitor_information_1_idx` (`visitor_information__id_visitor_information` ASC) VISIBLE,
  INDEX `fk_member_has_visitor_information__member1_idx` (`member_id_member` ASC, `member_home_information_id_home_information` ASC, `member_home_information_door_number` ASC, `member_expenses_id_expenses` ASC) VISIBLE,
  CONSTRAINT `fk_member_has_visitor_information__member1`
    FOREIGN KEY (`member_id_member` , `member_home_information_id_home_information` , `member_home_information_door_number` , `member_expenses_id_expenses`)
    REFERENCES `cooperative_database_proje`.`member` (`id_member` , `home_information_id_home_information` , `home_information_door_number` , `expenses_id_expenses`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_member_has_visitor_information__visitor_information_1`
    FOREIGN KEY (`visitor_information__id_visitor_information`)
    REFERENCES `cooperative_database_proje`.`visitor_information_` (`id_visitor_information`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `cooperative_database_proje`.`tenant_has_visitor_information_`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cooperative_database_proje`.`tenant_has_visitor_information_` (
  `tenant_id_tenant` CHAR(5) NOT NULL,
  `tenant_home_information_id_home_information` CHAR(5) NOT NULL,
  `tenant_home_information_door_number` VARCHAR(10) NOT NULL,
  `tenant_apartment_information_id_apartment_information` CHAR(5) NOT NULL,
  `tenant_apartment_information_apartment_name` VARCHAR(15) NOT NULL,
  `visitor_information__id_visitor_information` CHAR(5) NOT NULL,
  PRIMARY KEY (`tenant_id_tenant`, `tenant_home_information_id_home_information`, `tenant_home_information_door_number`, `tenant_apartment_information_id_apartment_information`, `tenant_apartment_information_apartment_name`, `visitor_information__id_visitor_information`),
  INDEX `fk_tenant_has_visitor_information__visitor_information_1_idx` (`visitor_information__id_visitor_information` ASC) VISIBLE,
  INDEX `fk_tenant_has_visitor_information__tenant1_idx` (`tenant_id_tenant` ASC, `tenant_home_information_id_home_information` ASC, `tenant_home_information_door_number` ASC, `tenant_apartment_information_id_apartment_information` ASC, `tenant_apartment_information_apartment_name` ASC) VISIBLE,
  CONSTRAINT `fk_tenant_has_visitor_information__tenant1`
    FOREIGN KEY (`tenant_id_tenant` , `tenant_home_information_id_home_information` , `tenant_home_information_door_number` , `tenant_apartment_information_id_apartment_information` , `tenant_apartment_information_apartment_name`)
    REFERENCES `cooperative_database_proje`.`tenant` (`id_tenant` , `home_information_id_home_information` , `home_information_door_number` , `apartment_information_id_apartment_information` , `apartment_information_apartment_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tenant_has_visitor_information__visitor_information_1`
    FOREIGN KEY (`visitor_information__id_visitor_information`)
    REFERENCES `cooperative_database_proje`.`visitor_information_` (`id_visitor_information`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
