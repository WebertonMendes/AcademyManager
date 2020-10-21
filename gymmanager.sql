-- DROP/CREATE DATABASE
CREATE DATABASE gymmanager;

-- CREATE TABLE "Instructors"
CREATE TABLE "instructors" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT,
    "avatar_url" TEXT,
    "birth" TIMESTAMP,
    "gender" TEXT,
    "services" TEXT,
    "created_at" TIMESTAMP DEFAULT 'now()'
);

-- CREATE TABLE "Members"
CREATE TABLE "members" (
    "id" SERIAL PRIMARY KEY,
    "name" TEXT,
    "avatar_url" TEXT,
    "email" TEXT,
    "gender" TEXT,
    "birth" TIMESTAMP,
    "blood" TEXT,
    "weight" INTEGER,
    "height" INTEGER,
    "instructor_id" INTEGER,
    "created_at" TIMESTAMP DEFAULT 'now()'
);

-- CREATE FOREING KEYS
ALTER TABLE "members" ADD FOREIGN KEY ("instructor_id") REFERENCES "instructors" ("id");

-- INSERT INSTRUCTOR
INSERT INTO instructors (avatar_url, name, birth, gender, services, created_at) VALUES ('https://images.unsplash.com/photo-1520334363269-c1b342d17261?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 'Ina Towner', '1993-09-16', 'F', 'Musculação, Crossfit', '2020-10-21');

-- INSERT MEMBER
INSERT INTO members (avatar_url, name, email, birth, gender, blood, weight, height, instructor_id) VALUES ('https://images.unsplash.com/photo-1567013275689-c179a874478f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60', 'Rose Ogden', 'rosebogden@dayrep.com', '1990-10-22', 'F', 'A+', '59', '157', '1');