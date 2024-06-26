/*
  Warnings:

  - A unique constraint covering the columns `[cpf]` on the table `Cliente` will be added. If there are existing duplicate values, this will fail.
  - A unique constraint covering the columns `[numero]` on the table `Cliente` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `bairro` to the `Cliente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cidade` to the `Cliente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `complemento` to the `Cliente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `cpf` to the `Cliente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `endereco` to the `Cliente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `estado` to the `Cliente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `numero` to the `Cliente` table without a default value. This is not possible if the table is not empty.
  - Added the required column `telefone` to the `Cliente` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Cliente" ADD COLUMN     "bairro" VARCHAR(100) NOT NULL,
ADD COLUMN     "cidade" VARCHAR(100) NOT NULL,
ADD COLUMN     "complemento" TEXT NOT NULL,
ADD COLUMN     "cpf" VARCHAR(11) NOT NULL,
ADD COLUMN     "endereco" VARCHAR(255) NOT NULL,
ADD COLUMN     "estado" VARCHAR(100) NOT NULL,
ADD COLUMN     "numero" VARCHAR(10) NOT NULL,
ADD COLUMN     "telefone" VARCHAR(20) NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Cliente_cpf_key" ON "Cliente"("cpf");

-- CreateIndex
CREATE UNIQUE INDEX "Cliente_numero_key" ON "Cliente"("numero");
