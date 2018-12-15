DROP DATABASE IF EXISTS `coupon_system`;
CREATE DATABASE `coupon_system`;
USE `coupon_system`;

-- Create `companies` table
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies` (
   `company_id`  INT UNSIGNED AUTO_INCREMENT ,
   `company_name`    VARCHAR(15) NOT NULL DEFAULT '', 
   `company_email`  VARCHAR(30) NOT NULL DEFAULT '',
   `company_password`  VARCHAR(10) NOT NULL DEFAULT '', 
   PRIMARY KEY (`company_id`)
);

-- Create `categories` table
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
   `category_id`  INT UNSIGNED AUTO_INCREMENT ,
   `category_name`    VARCHAR(15) NOT NULL DEFAULT '', 
   PRIMARY KEY (`category_id`)
);

-- Create `customers` table
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers` (
   `customer_id`  INT UNSIGNED  NOT NULL AUTO_INCREMENT,
   `first_name`         VARCHAR(15)   NOT NULL DEFAULT '',
   `last_name`         VARCHAR(15)   NOT NULL DEFAULT '',
   `customer_email`      VARCHAR(30)   NOT NULL DEFAULT '',
   `customer_password`        VARCHAR(10)   NOT NULL DEFAULT '',
   PRIMARY KEY (`customer_id`)
);

-- Create `coupons` table
DROP TABLE IF EXISTS `coupons`;
CREATE TABLE `coupons` (
   `coupon_id`  INT UNSIGNED  NOT NULL AUTO_INCREMENT,
   `company_id`     INT UNSIGNED  NOT NULL,
   `category_id`    INT UNSIGNED  NOT NULL,
   `title`      VARCHAR(40)   NOT NULL DEFAULT '',
   `description`        VARCHAR(250)   NOT NULL DEFAULT '',
   `start_date`    DATE   NOT NULL,
   `end_date`    DATE   NOT NULL,
   `amount`    INT UNSIGNED,
   `price`   DOUBLE UNSIGNED,
   `image` VARCHAR(50),   
   PRIMARY KEY (`coupon_id`),
   FOREIGN KEY (`company_id`) REFERENCES `companies` (`company_id`),
   FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
);

-- Create `customers_vs_coupons` table
DROP TABLE IF EXISTS `customers_vs_coupons`;
CREATE TABLE `customers_vs_coupons` (
   `coupon_id`  INT UNSIGNED  NOT NULL AUTO_INCREMENT,
   `customer_id`     INT UNSIGNED  NOT NULL,   
   PRIMARY KEY (`coupon_id`,`customer_id`),
   FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`coupon_id`),
   FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
);





-- Inserting test companies
INSERT INTO `companies` VALUES
  
   (1,'Novonordisk','123@gmail.com','abc123'),
   (NULL,'jb','243@gmail.com','456123');
   

 SELECT * FROM `companies`;
 
 