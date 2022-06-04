/*
  Warnings:

  - You are about to drop the column `regionID` on the `countries` table. All the data in the column will be lost.
  - Added the required column `region_id` to the `Countries` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `countries` DROP FOREIGN KEY `Countries_regionID_fkey`;

-- AlterTable
ALTER TABLE `countries` DROP COLUMN `regionID`,
    ADD COLUMN `region_id` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Countries` ADD CONSTRAINT `Countries_region_id_fkey` FOREIGN KEY (`region_id`) REFERENCES `Regions`(`region_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
