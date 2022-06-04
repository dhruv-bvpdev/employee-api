/*
  Warnings:

  - You are about to drop the column `managerId` on the `employees` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `employees` DROP FOREIGN KEY `Employees_managerId_fkey`;

-- AlterTable
ALTER TABLE `employees` DROP COLUMN `managerId`;
