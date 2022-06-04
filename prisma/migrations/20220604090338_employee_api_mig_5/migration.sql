-- AlterTable
ALTER TABLE `countries` MODIFY `country_name` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `employees` MODIFY `first_name` VARCHAR(191) NULL,
    MODIFY `phone_number` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `jobs` MODIFY `min_salary` DECIMAL(65, 30) NULL,
    MODIFY `max_salary` DECIMAL(65, 30) NULL;

-- AlterTable
ALTER TABLE `locations` MODIFY `street_address` VARCHAR(191) NULL,
    MODIFY `postal_code` VARCHAR(191) NULL,
    MODIFY `state_province` VARCHAR(191) NULL;

-- AlterTable
ALTER TABLE `regions` MODIFY `region_name` VARCHAR(191) NULL;
