/*
  Warnings:

  - You are about to drop the column `employeeID` on the `dependents` table. All the data in the column will be lost.
  - Added the required column `employee_id` to the `Dependents` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `dependents` DROP FOREIGN KEY `Dependents_employeeID_fkey`;

-- AlterTable
ALTER TABLE `dependents` DROP COLUMN `employeeID`,
    ADD COLUMN `employee_id` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Dependents` ADD CONSTRAINT `Dependents_employee_id_fkey` FOREIGN KEY (`employee_id`) REFERENCES `Employees`(`employee_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
