/*
  Warnings:

  - You are about to drop the column `departmentID` on the `employees` table. All the data in the column will be lost.
  - Added the required column `department_id` to the `Employees` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `employees` DROP FOREIGN KEY `Employees_departmentID_fkey`;

-- AlterTable
ALTER TABLE `employees` DROP COLUMN `departmentID`,
    ADD COLUMN `department_id` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Employees` ADD CONSTRAINT `Employees_department_id_fkey` FOREIGN KEY (`department_id`) REFERENCES `Departments`(`department_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
