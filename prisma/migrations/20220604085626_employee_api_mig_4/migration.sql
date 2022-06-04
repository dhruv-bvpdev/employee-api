/*
  Warnings:

  - The primary key for the `countries` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `countries` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `countries` table. All the data in the column will be lost.
  - The primary key for the `departments` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `departments` table. All the data in the column will be lost.
  - The primary key for the `employees` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `employees` table. All the data in the column will be lost.
  - The primary key for the `jobs` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `jobs` table. All the data in the column will be lost.
  - The primary key for the `locations` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `locations` table. All the data in the column will be lost.
  - The primary key for the `regions` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `id` on the `regions` table. All the data in the column will be lost.
  - You are about to drop the column `name` on the `regions` table. All the data in the column will be lost.
  - Added the required column `country_id` to the `Countries` table without a default value. This is not possible if the table is not empty.
  - Added the required column `country_name` to the `Countries` table without a default value. This is not possible if the table is not empty.
  - Added the required column `department_id` to the `Departments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `employee_id` to the `Employees` table without a default value. This is not possible if the table is not empty.
  - Added the required column `job_id` to the `Jobs` table without a default value. This is not possible if the table is not empty.
  - Added the required column `location_id` to the `Locations` table without a default value. This is not possible if the table is not empty.
  - Added the required column `region_id` to the `Regions` table without a default value. This is not possible if the table is not empty.
  - Added the required column `region_name` to the `Regions` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `countries` DROP FOREIGN KEY `Countries_regionID_fkey`;

-- DropForeignKey
ALTER TABLE `departments` DROP FOREIGN KEY `Departments_locationID_fkey`;

-- DropForeignKey
ALTER TABLE `employees` DROP FOREIGN KEY `Employees_departmentID_fkey`;

-- DropForeignKey
ALTER TABLE `employees` DROP FOREIGN KEY `Employees_jobID_fkey`;

-- DropForeignKey
ALTER TABLE `employees` DROP FOREIGN KEY `Employees_managerId_fkey`;

-- DropForeignKey
ALTER TABLE `locations` DROP FOREIGN KEY `Locations_countryID_fkey`;

-- AlterTable
ALTER TABLE `countries` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    DROP COLUMN `name`,
    ADD COLUMN `country_id` VARCHAR(191) NOT NULL,
    ADD COLUMN `country_name` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`country_id`);

-- AlterTable
ALTER TABLE `departments` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    ADD COLUMN `department_id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`department_id`);

-- AlterTable
ALTER TABLE `employees` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    ADD COLUMN `employee_id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`employee_id`);

-- AlterTable
ALTER TABLE `jobs` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    ADD COLUMN `job_id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`job_id`);

-- AlterTable
ALTER TABLE `locations` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    ADD COLUMN `location_id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`location_id`);

-- AlterTable
ALTER TABLE `regions` DROP PRIMARY KEY,
    DROP COLUMN `id`,
    DROP COLUMN `name`,
    ADD COLUMN `region_id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD COLUMN `region_name` VARCHAR(191) NOT NULL,
    ADD PRIMARY KEY (`region_id`);

-- AddForeignKey
ALTER TABLE `Countries` ADD CONSTRAINT `Countries_regionID_fkey` FOREIGN KEY (`regionID`) REFERENCES `Regions`(`region_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Locations` ADD CONSTRAINT `Locations_countryID_fkey` FOREIGN KEY (`countryID`) REFERENCES `Countries`(`country_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Departments` ADD CONSTRAINT `Departments_locationID_fkey` FOREIGN KEY (`locationID`) REFERENCES `Locations`(`location_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Employees` ADD CONSTRAINT `Employees_jobID_fkey` FOREIGN KEY (`jobID`) REFERENCES `Jobs`(`job_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Employees` ADD CONSTRAINT `Employees_departmentID_fkey` FOREIGN KEY (`departmentID`) REFERENCES `Departments`(`department_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Employees` ADD CONSTRAINT `Employees_managerId_fkey` FOREIGN KEY (`managerId`) REFERENCES `Employees`(`employee_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
