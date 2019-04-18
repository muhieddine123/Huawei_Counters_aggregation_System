/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : PostgreSQL
 Source Server Version : 100006
 Source Host           : localhost:5432
 Source Catalog        : Statistics
 Source Schema         : bookkeeper

 Target Server Type    : PostgreSQL
 Target Server Version : 100006
 File Encoding         : 65001

 Date: 18/04/2019 11:13:20
*/


-- ----------------------------
-- Table structure for bookkeeper
-- ----------------------------
DROP TABLE IF EXISTS "bookkeeper"."bookkeeper";
CREATE TABLE "bookkeeper"."bookkeeper" (
  "Result Time" timestamp(6) NOT NULL,
  "Entity_Type_SQL" text COLLATE "pg_catalog"."default" NOT NULL,
  "Object_Type_SQL" text COLLATE "pg_catalog"."default" NOT NULL,
  "FunctionSubSet Name SQL" text COLLATE "pg_catalog"."default" NOT NULL,
  "FunctionSubSet_id" numeric(24) NOT NULL
)
;

-- ----------------------------
-- Primary Key structure for table bookkeeper
-- ----------------------------
ALTER TABLE "bookkeeper"."bookkeeper" ADD CONSTRAINT "bookkeeper_pkey" PRIMARY KEY ("Result Time", "Entity_Type_SQL", "Object_Type_SQL", "FunctionSubSet Name SQL", "FunctionSubSet_id");
