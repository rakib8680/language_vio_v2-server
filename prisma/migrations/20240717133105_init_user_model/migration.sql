-- CreateEnum
CREATE TYPE "USER_ROLE" AS ENUM ('USER', 'ADMIN', 'INSTRUCTOR');

-- CreateEnum
CREATE TYPE "USER_STATUS" AS ENUM ('ACTIVE', 'BLOCKED');

-- CreateEnum
CREATE TYPE "COURSE_TYPE" AS ENUM ('FREE', 'PAID');

-- CreateTable
CREATE TABLE "users" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "role" "USER_ROLE" NOT NULL DEFAULT 'USER',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");
