PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "oss_sys_user" (
  "id" text NOT NULL,
  "username" TEXT,
  "password" TEXT,
  "create_time" TEXT,
  "intro" TEXT,
  PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "oss_information" (
  "id" text NOT NULL,
  "root" TEXT,
  "invoking_root" TEXT,
  "nginx_log_path" TEXT,
  "create_time" TEXT,
  "modified_time" TEXT,
  PRIMARY KEY ("id")
);
INSERT INTO oss_information VALUES('5b8b7a2d1aa4414f95a2338aba9571d7','/home/material/','http://192.168.0.7/','/usr/local/nginx/logs/access.log','2018-06-17 10:41:41','2018-06-17 10:45:31');
CREATE TABLE IF NOT EXISTS "oss_material_info" (
  "id" text NOT NULL,
  "original_name" TEXT,
  "store_path" TEXT,
  "url" TEXT,
  "user_id" text,
  "type" TEXT,
  "byte_str" TEXT,
  "len" integer,
  "create_time" TEXT,
  "last_modified_time" TEXT NOT NULL,
  "app_id" text,
  "from_ip" TEXT,
  PRIMARY KEY ("id", "last_modified_time")
);
CREATE TABLE IF NOT EXISTS "oss_developer" (
  "id" text NOT NULL,
  "name" TEXT,
  "appid" text,
  "appsecret" TEXT,
  "email" TEXT,
  "create_time" TEXT,
  "tel" TEXT,
  "intro" TEXT,
  "status" TEXT,
  "use_space" integer,
  "use_space_str" TEXT,
  PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "oss_app_info" (
  "id" text NOT NULL,
  "name" TEXT,
  "code" TEXT,
  "create_time" TEXT,
  "intro" TEXT,
  "dev_id" text,
  "use_space" integer,
  "use_space_str" TEXT,
  PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "oss_statistic_day" (
  "id" text NOT NULL,
  "create_time" TEXT,
  "files" integer,
  "use_spaces" integer,
  "cur_date" TEXT,
  "modified_time" TEXT,
  "user_id" text,
  PRIMARY KEY ("id")
);
COMMIT;
