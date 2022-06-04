/*
  Warnings:

  - You are about to drop the column `jobID` on the `employees` table. All the data in the column will be lost.
  - Added the required column `job_id` to the `Employees` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `employees` DROP FOREIGN KEY `Employees_jobID_fkey`;

-- AlterTable
ALTER TABLE `employees` DROP COLUMN `jobID`,
    ADD COLUMN `job_id` INTEGER NOT NULL;

-- CreateTable
CREATE TABLE `Dependents` (
    `dependent_id` INTEGER NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(191) NOT NULL,
    `last_name` VARCHAR(191) NOT NULL,
    `relationship` VARCHAR(191) NOT NULL,
    `employeeID` INTEGER NOT NULL,

    PRIMARY KEY (`dependent_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Employees` ADD CONSTRAINT `Employees_job_id_fkey` FOREIGN KEY (`job_id`) REFERENCES `Jobs`(`job_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Dependents` ADD CONSTRAINT `Dependents_employeeID_fkey` FOREIGN KEY (`employeeID`) REFERENCES `Employees`(`employee_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
