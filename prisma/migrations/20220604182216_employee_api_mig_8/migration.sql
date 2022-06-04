/*
  Warnings:

  - You are about to drop the column `locationID` on the `departments` table. All the data in the column will be lost.
  - You are about to drop the column `countryID` on the `locations` table. All the data in the column will be lost.
  - Added the required column `location_id` to the `Departments` table without a default value. This is not possible if the table is not empty.
  - Added the required column `country_id` to the `Locations` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `departments` DROP FOREIGN KEY `Departments_locationID_fkey`;

-- DropForeignKey
ALTER TABLE `locations` DROP FOREIGN KEY `Locations_countryID_fkey`;

-- AlterTable
ALTER TABLE `departments` DROP COLUMN `locationID`,
    ADD COLUMN `location_id` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `locations` DROP COLUMN `countryID`,
    ADD COLUMN `country_id` VARCHAR(191) NOT NULL;

-- AddForeignKey
ALTER TABLE `Locations` ADD CONSTRAINT `Locations_country_id_fkey` FOREIGN KEY (`country_id`) REFERENCES `Countries`(`country_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Departments` ADD CONSTRAINT `Departments_location_id_fkey` FOREIGN KEY (`location_id`) REFERENCES `Locations`(`location_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
