/*
  Warnings:

  - You are about to drop the column `cratedAt` on the `Barbershop` table. All the data in the column will be lost.
  - The `phones` column on the `Barbershop` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - You are about to drop the column `cratedAt` on the `Booking` table. All the data in the column will be lost.
  - You are about to drop the column `cratedAt` on the `User` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "Barbershop" DROP COLUMN "cratedAt",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
DROP COLUMN "phones",
ADD COLUMN     "phones" TEXT[];

-- AlterTable
ALTER TABLE "Booking" DROP COLUMN "cratedAt",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;

-- AlterTable
ALTER TABLE "User" DROP COLUMN "cratedAt",
ADD COLUMN     "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP;
