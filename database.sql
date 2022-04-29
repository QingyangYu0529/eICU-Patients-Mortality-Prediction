CREATE SCHEMA IF NOT EXISTS `eicu`;
USE eicu;

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema eicu
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema eicu
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `eicu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `eicu` ;

-- -----------------------------------------------------
-- Table `eicu`.`patient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eicu`.`patient` (
  `patientunitstayid` INT NOT NULL,
  `patienthealthsystemstayid` INT NULL DEFAULT NULL,
  `gender` TEXT NULL DEFAULT NULL,
  `age` TEXT NULL DEFAULT NULL,
  `ethnicity` TEXT NULL DEFAULT NULL,
  `hospitalid` TEXT NULL DEFAULT NULL,
  `wardid` TEXT NULL DEFAULT NULL,
  `apacheadmissiondx` TEXT NULL DEFAULT NULL,
  `admissionheight` TEXT NULL DEFAULT NULL,
  `hospitaladmittime24` TEXT NULL DEFAULT NULL,
  `hospitaladmitoffset` INT NULL DEFAULT NULL,
  `hospitaladmitsource` TEXT NULL DEFAULT NULL,
  `hospitaldischargeyear` TEXT NULL DEFAULT NULL,
  `hospitaldischargetime24` TEXT NULL DEFAULT NULL,
  `hospitaldischargeoffset` TEXT NULL DEFAULT NULL,
  `hospitaldischargelocation` TEXT NULL DEFAULT NULL,
  `hospitaldischargestatus` TEXT NULL DEFAULT NULL,
  `unittype` TEXT NULL DEFAULT NULL,
  `unitadmittime24` TEXT NULL DEFAULT NULL,
  `unitadmitsource` TEXT NULL DEFAULT NULL,
  `unitvisitnumber` TEXT NULL DEFAULT NULL,
  `unitstaytype` TEXT NULL DEFAULT NULL,
  `admissionweight` TEXT NULL DEFAULT NULL,
  `dischargeweight` TEXT NULL DEFAULT NULL,
  `unitdischargetime24` TEXT NULL DEFAULT NULL,
  `unitdischargeoffset` TEXT NULL DEFAULT NULL,
  `unitdischargelocation` TEXT NULL DEFAULT NULL,
  `unitdischargestatus` TEXT NULL DEFAULT NULL,
  `uniquepid` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`patientunitstayid`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `eicu`.`apacheapsvar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eicu`.`apacheapsvar` (
  `apacheapsvarid` INT NOT NULL,
  `patientunitstayid` INT NULL DEFAULT NULL,
  `intubated` TEXT NULL DEFAULT NULL,
  `vent` TEXT NULL DEFAULT NULL,
  `dialysis` TEXT NULL DEFAULT NULL,
  `eyes` TEXT NULL DEFAULT NULL,
  `motor` TEXT NULL DEFAULT NULL,
  `verbal` TEXT NULL DEFAULT NULL,
  `meds` TEXT NULL DEFAULT NULL,
  `urine` TEXT NULL DEFAULT NULL,
  `wbc` TEXT NULL DEFAULT NULL,
  `temperature` TEXT NULL DEFAULT NULL,
  `respiratoryrate` TEXT NULL DEFAULT NULL,
  `sodium` TEXT NULL DEFAULT NULL,
  `heartrate` TEXT NULL DEFAULT NULL,
  `meanbp` TEXT NULL DEFAULT NULL,
  `ph` TEXT NULL DEFAULT NULL,
  `hematocrit` TEXT NULL DEFAULT NULL,
  `creatinine` TEXT NULL DEFAULT NULL,
  `albumin` TEXT NULL DEFAULT NULL,
  `pao2` TEXT NULL DEFAULT NULL,
  `pco2` TEXT NULL DEFAULT NULL,
  `bun` TEXT NULL DEFAULT NULL,
  `glucose` TEXT NULL DEFAULT NULL,
  `bilirubin` TEXT NULL DEFAULT NULL,
  `fio2` INT NULL DEFAULT NULL,
  PRIMARY KEY (`apacheapsvarid`),
  INDEX `patientunitstayid_idx` (`patientunitstayid` ASC) VISIBLE,
  CONSTRAINT `patientunitstayid`
    FOREIGN KEY (`patientunitstayid`)
    REFERENCES `eicu`.`patient` (`patientunitstayid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `eicu`.`apachepredvar`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eicu`.`apachepredvar` (
  `apachepredvarid` INT NOT NULL,
  `patientunitstayid` INT NULL DEFAULT NULL,
  `sicuday` TEXT NULL DEFAULT NULL,
  `saps3day1` TEXT NULL DEFAULT NULL,
  `saps3today` TEXT NULL DEFAULT NULL,
  `saps3yesterday` TEXT NULL DEFAULT NULL,
  `gender` TEXT NULL DEFAULT NULL,
  `teachtype` TEXT NULL DEFAULT NULL,
  `region` TEXT NULL DEFAULT NULL,
  `bedcount` TEXT NULL DEFAULT NULL,
  `admitsource` TEXT NULL DEFAULT NULL,
  `graftcount` TEXT NULL DEFAULT NULL,
  `meds` TEXT NULL DEFAULT NULL,
  `verbal` TEXT NULL DEFAULT NULL,
  `motor` TEXT NULL DEFAULT NULL,
  `eyes` TEXT NULL DEFAULT NULL,
  `age` TEXT NULL DEFAULT NULL,
  `admitdiagnosis` TEXT NULL DEFAULT NULL,
  `thrombolytics` TEXT NULL DEFAULT NULL,
  `diedinhospital` TEXT NULL DEFAULT NULL,
  `aids` TEXT NULL DEFAULT NULL,
  `hepaticfailure` TEXT NULL DEFAULT NULL,
  `lymphoma` TEXT NULL DEFAULT NULL,
  `metastaticcancer` TEXT NULL DEFAULT NULL,
  `leukemia` TEXT NULL DEFAULT NULL,
  `immunosuppression` TEXT NULL DEFAULT NULL,
  `cirrhosis` TEXT NULL DEFAULT NULL,
  `electivesurgery` TEXT NULL DEFAULT NULL,
  `activetx` TEXT NULL DEFAULT NULL,
  `readmit` TEXT NULL DEFAULT NULL,
  `ima` TEXT NULL DEFAULT NULL,
  `midur` TEXT NULL DEFAULT NULL,
  `ventday1` TEXT NULL DEFAULT NULL,
  `oobventday1` TEXT NULL DEFAULT NULL,
  `oobintubday1` TEXT NULL DEFAULT NULL,
  `diabetes` TEXT NULL DEFAULT NULL,
  `managementsystem` TEXT NULL DEFAULT NULL,
  `var03hspxlos` TEXT NULL DEFAULT NULL,
  `pao2` TEXT NULL DEFAULT NULL,
  `fio2` TEXT NULL DEFAULT NULL,
  `ejectfx` TEXT NULL DEFAULT NULL,
  `creatinine` TEXT NULL DEFAULT NULL,
  `dischargelocation` TEXT NULL DEFAULT NULL,
  `visitnumber` TEXT NULL DEFAULT NULL,
  `amilocation` TEXT NULL DEFAULT NULL,
  `day1meds` TEXT NULL DEFAULT NULL,
  `day1verbal` TEXT NULL DEFAULT NULL,
  `day1motor` TEXT NULL DEFAULT NULL,
  `day1eyes` TEXT NULL DEFAULT NULL,
  `day1pao2` TEXT NULL DEFAULT NULL,
  `day1fio2` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`apachepredvarid`),
  INDEX `patientunitstayid_idx` (`patientunitstayid` ASC) VISIBLE,
  CONSTRAINT `patientunitstayid`
    FOREIGN KEY (`patientunitstayid`)
    REFERENCES `eicu`.`patient` (`patientunitstayid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `eicu`.`lab1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `eicu`.`lab1` (
  `patientunitstayid` INT NOT NULL,
  `albumin` TEXT NULL DEFAULT NULL,
  `BUN` TEXT NULL DEFAULT NULL,
  `bicarbonate` TEXT NULL DEFAULT NULL,
  `creatinine` TEXT NULL DEFAULT NULL,
  `FiO2` TEXT NULL DEFAULT NULL,
  `glucose` TEXT NULL DEFAULT NULL,
  `HCO3` TEXT NULL DEFAULT NULL,
  `Hct` TEXT NULL DEFAULT NULL,
  `paO2` TEXT NULL DEFAULT NULL,
  `pH` TEXT NULL DEFAULT NULL,
  `potassium` TEXT NULL DEFAULT NULL,
  `Respiratory` TEXT NULL DEFAULT NULL,
  `sodium` TEXT NULL DEFAULT NULL,
  `Temperature` TEXT NULL DEFAULT NULL,
  `bilirubin` TEXT NULL DEFAULT NULL,
  `WBC_1000` TEXT NULL DEFAULT NULL,
  `fiO2_paO2` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`patientunitstayid`),
  CONSTRAINT `patientunitstayid`
    FOREIGN KEY (`patientunitstayid`)
    REFERENCES `eicu`.`patient` (`patientunitstayid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

select p.patientunitstayid, p.gender, p.age, p.ethnicity, p.apacheadmissiondx, p.admissionheight, p.admissionweight, p.unitdischargestatus, p.admissionheight,
l.albumin, l.BUN, l.bicarbonate, l.creatinine, l.FiO2, l.glucose, l.HCO3, l.Hct, l.paO2, l.pH, l.potassium, l.Respiratory,l.sodium,l.Temperature, l.bilirubin, l.WBC_1000, l.fiO2_paO2, 
apv.intubated, apv.vent, apv.dialysis, apv.eyes, apv.motor, apv.verbal, apv.urine, apv.heartrate, apv.wbc, apv.albumin, apv.bilirubin, apv.bun, 
apv.creatinine, apv.fio2, apv.glucose, apv.hematocrit, apv.pao2, apv.ph, apv.respiratoryrate, apv.sodium, apv.temperature, apv.meanbp,
app.aids, app.hepaticfailure, app.leukemia, app.lymphoma, app.metastaticcancer, app.immunosuppression, app.cirrhosis
from patient p 
join lab1 l on l.patientunitstayid = p.patientunitstayid
join apacheapsvar apv on apv.patientunitstayid = p.patientunitstayid
join apachepredvar app on app.patientunitstayid = p.patientunitstayid;