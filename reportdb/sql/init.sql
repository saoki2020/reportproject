DROP DATABASE IF EXISTS report_db;
CREATE DATABASE report_db;

USE report_db;

DROP TABLE IF EXISTS MST_JOB;
DROP TABLE IF EXISTS MST_DEPARTMENT;
DROP TABLE IF EXISTS MST_SCENE;
DROP TABLE IF EXISTS MST_MISTAKE;
DROP TABLE IF EXISTS MST_CONTENT;
DROP TABLE IF EXISTS MST_DETAIL;
DROP TABLE IF EXISTS MST_DEST;
DROP TABLE IF EXISTS MST_CLINICAL_DEPT;
DROP TABLE IF EXISTS USER;
DROP TABLE IF EXISTS REPORT;

CREATE TABLE MST_JOB (
  job_id tinyint NOT NULL AUTO_INCREMENT primary key,
  job_name varchar(255) NOT NULL
);

CREATE TABLE MST_DEPARTMENT (
  dept_id tinyint NOT NULL AUTO_INCREMENT primary key,
  dept_name varchar(255) NOT NULL
);

CREATE TABLE MST_SCENE (
  scene_id tinyint NOT NULL AUTO_INCREMENT primary key,
  scene varchar(255) NOT NULL
);

CREATE TABLE MST_CONTENT (
  content_id tinyint NOT NULL AUTO_INCREMENT primary key,
  content varchar(255) NOT NULL
);

CREATE TABLE MST_DETAIL (
  detail_id tinyint NOT NULL AUTO_INCREMENT primary key,
  detail varchar(255) NOT NULL
);

CREATE TABLE MST_MISTAKE (
  mistake_id tinyint NOT NULL AUTO_INCREMENT primary key,
  mistake varchar(255) NOT NULL
);

CREATE TABLE MST_DEST (
  dest_id tinyint NOT NULL AUTO_INCREMENT primary key,
  dest varchar(255) NOT NULL
);

CREATE TABLE MST_CLINICAL_DEPT (
  clinical_dept_id tinyint NOT NULL AUTO_INCREMENT primary key,
  clinical_dept_name varchar(255) NOT NULL
);

CREATE TABLE USER (
  user_id smallint NOT NULL AUTO_INCREMENT primary key,
  name varchar(255) NOT NULL,
  email varchar(255) NOT NULL UNIQUE,
  password varchar(255) NOT NULL,
  job_id tinyint NOT NULL,
  dept_id tinyint NOT NULL,
  isChief boolean NOT NULL,
  isRegistration boolean NOT NULL DEFAULT 0,
  CONSTRAINT user_jobid_fk FOREIGN KEY (job_id) REFERENCES MST_JOB(job_id),
  CONSTRAINT user_deptid_fk FOREIGN KEY (dept_id) REFERENCES MST_DEPARTMENT(dept_id)
);

CREATE TABLE REPORT (
  report_no smallint NOT NULL AUTO_INCREMENT primary key,
  user_id smallint NOT NULL,
  experience smallint NOT NULL,
  patient_name text NOT NULL,
  patient_age tinyint NOT NULL,
  patient_gender text NOT NULL,
  clinical_dept_id tinyint NOT NULL,
  disease text NOT NULL,
  hospital_date date NOT NULL,
  doctor text NOT NULL,
  incident_datetime datetime NOT NULL,
  scene_id tinyint NOT NULL,
  content_id tinyint NOT NULL,
  detail_id tinyint NOT NULL,
  mistake_id tinyint NOT NULL,
  report_datetime datetime NOT NULL,
  dest_id tinyint NOT NULL,
  risk tinyint NOT NULL,
  lose_trust tinyint NOT NULL,
  situation text NOT NULL,
  response text NOT NULL,
  factor text NOT NULL,
  prevention text NOT NULL,
  comment text,
  CONSTRAINT report_userid_fk FOREIGN KEY (user_id) REFERENCES USER(user_id),
  CONSTRAINT report_scene_fk FOREIGN KEY (scene_id) REFERENCES MST_SCENE(scene_id),
  CONSTRAINT report_content_fk FOREIGN KEY (content_id) REFERENCES MST_CONTENT(content_id),
  CONSTRAINT report_detail_fk FOREIGN KEY (detail_id) REFERENCES MST_DETAIL(detail_id),
  CONSTRAINT report_mistake_fk FOREIGN KEY (mistake_id) REFERENCES MST_MISTAKE(mistake_id),
  CONSTRAINT report_dest_fk FOREIGN KEY (dest_id) REFERENCES MST_DEST(dest_id),
  CONSTRAINT report_clinical_dept_fk FOREIGN key (clinical_dept_id) REFERENCES MST_CLINICAL_DEPT (clinical_dept_id)
);

INSERT INTO MST_JOB (job_name) VALUES ('??????');
INSERT INTO MST_JOB (job_name) VALUES ('?????????');
INSERT INTO MST_JOB (job_name) VALUES ('???????????????');
INSERT INTO MST_JOB (job_name) VALUES ('???????????????');
INSERT INTO MST_JOB (job_name) VALUES ('???????????????');
INSERT INTO MST_JOB (job_name) VALUES ('??????????????????');
INSERT INTO MST_JOB (job_name) VALUES ('?????????');
INSERT INTO MST_JOB (job_name) VALUES ('??????');
INSERT INTO MST_JOB (job_name) VALUES ('????????????');
INSERT INTO MST_JOB (job_name) VALUES ('?????????');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('??????');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('?????????');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('????????????');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('?????????');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('????????????');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('?????????');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('?????????');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('????????????');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('ICU');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('CCU');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('?????????');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('A??????');
INSERT INTO MST_DEPARTMENT (dept_name) VALUES ('B??????');
INSERT INTO MST_SCENE (scene) VALUES ('??????');
INSERT INTO MST_SCENE (scene) VALUES ('???????????????');
INSERT INTO MST_SCENE (scene) VALUES ('?????????');
INSERT INTO MST_SCENE (scene) VALUES ('???????????????');
INSERT INTO MST_SCENE (scene) VALUES ('?????????');
INSERT INTO MST_SCENE (scene) VALUES ('?????????');
INSERT INTO MST_SCENE (scene) VALUES ('??????');
INSERT INTO MST_SCENE (scene) VALUES ('???????????????????????????');
INSERT INTO MST_SCENE (scene) VALUES ('?????????');
INSERT INTO MST_SCENE (scene) VALUES ('????????????');
INSERT INTO MST_SCENE (scene) VALUES ('?????????');
INSERT INTO MST_SCENE (scene) VALUES ('??????');
INSERT INTO MST_SCENE (scene) VALUES ('??????');
INSERT INTO MST_SCENE (scene) VALUES ('???');
INSERT INTO MST_SCENE (scene) VALUES ('??????????????????');
INSERT INTO MST_SCENE (scene) VALUES ('?????????');
INSERT INTO MST_CONTENT (content) VALUES ('??????');
INSERT INTO MST_CONTENT (content) VALUES ('??????');
INSERT INTO MST_CONTENT (content) VALUES ('??????');
INSERT INTO MST_CONTENT (content) VALUES ('??????');
INSERT INTO MST_CONTENT (content) VALUES ('??????');
INSERT INTO MST_CONTENT (content) VALUES ('??????');
INSERT INTO MST_CONTENT (content) VALUES ('??????');
INSERT INTO MST_CONTENT (content) VALUES ('????????????');
INSERT INTO MST_CONTENT (content) VALUES ('????????????');
INSERT INTO MST_CONTENT (content) VALUES ('???????????????');
INSERT INTO MST_CONTENT (content) VALUES ('??????');
INSERT INTO MST_CONTENT (content) VALUES ('??????');
INSERT INTO MST_CONTENT (content) VALUES ('??????');
INSERT INTO MST_CONTENT (content) VALUES ('?????????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('?????????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('?????????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('X???');
INSERT INTO MST_DETAIL (detail) VALUES ('CT');
INSERT INTO MST_DETAIL (detail) VALUES ('MRI');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('?????????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('?????????');
INSERT INTO MST_DETAIL (detail) VALUES ('IVH');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('???????????????????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('A?????????');
INSERT INTO MST_DETAIL (detail) VALUES ('???????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('???????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('???????????????????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('?????????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('???????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('?????????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('???????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????');
INSERT INTO MST_DETAIL (detail) VALUES ('???????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('???????????????????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('??????????????????????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('????????????????????????');
INSERT INTO MST_DETAIL (detail) VALUES ('?????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('?????????????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('?????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('?????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('?????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('?????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('??????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('?????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('ME?????????????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('?????????????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('?????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('???????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('???????????????????????????');
INSERT INTO MST_MISTAKE (mistake) VALUES ('???????????????');
INSERT INTO MST_DEST (dest) VALUES ('?????????');
INSERT INTO MST_DEST (dest) VALUES ('?????????');
INSERT INTO MST_DEST (dest) VALUES ('?????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('????????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('???????????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('???????????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('???????????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('????????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('????????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('????????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('???????????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('???????????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('??????????????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('?????????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('??????');
INSERT INTO MST_CLINICAL_DEPT (clinical_dept_name) VALUES ('?????????');
