CREATE TABLE "Movies" (
  "title" varchar,
  "year_of_release" datetime,
  "length" timestamp,
  "genres_ID" int,
  "plot_outline" varchar,
  PRIMARY KEY ("title", "year_of_release")
);

CREATE TABLE "Production_company" (
  "name" varchar,
  "address" varchar,
  PRIMARY KEY ("name", "address")
);

CREATE TABLE "Movie_prod_com" (
  "ID" int PRIMARY KEY,
  "com_name" varchar,
  "com_add" varchar,
  "mov_title" varchar,
  "mov_yor" datetime
);

CREATE TABLE "Actor" (
  "name" varchar,
  "date_of_birth" date,
  PRIMARY KEY ("name", "date_of_birth")
);

CREATE TABLE "Actor_Movie" (
  "ID" int PRIMARY KEY,
  "ac_name" varchar,
  "ac_dob" date,
  "mov_title" varchar,
  "mov_yor" datetime
);

CREATE TABLE "Director" (
  "name" varchar,
  "date_of_birth" date,
  PRIMARY KEY ("name", "date_of_birth")
);

CREATE TABLE "Director_Movie" (
  "ID" int PRIMARY KEY,
  "ac_name" varchar,
  "ac_dob" date,
  "mov_title" varchar,
  "mov_yor" datetime
);

CREATE TABLE "Person" (
  "name" varchar,
  "date_of_birth" date
);

CREATE TABLE "Quotes" (
  "ID" int PRIMARY KEY,
  "mov_title" varchar,
  "mov_yor" datetime,
  "ac_name" varchar,
  "ac_dob" date,
  "Quote" varchar
);

CREATE TABLE "Genre" (
  "genres_ID" int PRIMARY KEY,
  "genre" varchar
);

ALTER TABLE "Genre" ADD FOREIGN KEY ("genres_ID") REFERENCES "Movies" ("genres_ID");

ALTER TABLE "Movie_prod_com" ADD FOREIGN KEY ("com_name") REFERENCES "Production_company" ("name");

ALTER TABLE "Movie_prod_com" ADD FOREIGN KEY ("com_add") REFERENCES "Production_company" ("address");

ALTER TABLE "Movies" ADD FOREIGN KEY ("title") REFERENCES "Movie_prod_com" ("mov_title");

ALTER TABLE "Movies" ADD FOREIGN KEY ("year_of_release") REFERENCES "Movie_prod_com" ("mov_yor");

ALTER TABLE "Actor_Movie" ADD FOREIGN KEY ("ac_name") REFERENCES "Actor" ("name");

ALTER TABLE "Actor_Movie" ADD FOREIGN KEY ("ac_dob") REFERENCES "Actor" ("date_of_birth");

ALTER TABLE "Actor_Movie" ADD FOREIGN KEY ("mov_title") REFERENCES "Movies" ("title");

ALTER TABLE "Actor_Movie" ADD FOREIGN KEY ("mov_yor") REFERENCES "Movies" ("year_of_release");

ALTER TABLE "Director_Movie" ADD FOREIGN KEY ("ac_name") REFERENCES "Director" ("name");

ALTER TABLE "Director_Movie" ADD FOREIGN KEY ("ac_dob") REFERENCES "Director" ("date_of_birth");

ALTER TABLE "Director_Movie" ADD FOREIGN KEY ("mov_title") REFERENCES "Movies" ("title");

ALTER TABLE "Director_Movie" ADD FOREIGN KEY ("mov_yor") REFERENCES "Movies" ("year_of_release");

ALTER TABLE "Person" ADD FOREIGN KEY ("name") REFERENCES "Actor" ("name");

ALTER TABLE "Person" ADD FOREIGN KEY ("name") REFERENCES "Director" ("name");

ALTER TABLE "Person" ADD FOREIGN KEY ("date_of_birth") REFERENCES "Actor" ("date_of_birth");

ALTER TABLE "Person" ADD FOREIGN KEY ("date_of_birth") REFERENCES "Director" ("date_of_birth");

ALTER TABLE "Quotes" ADD FOREIGN KEY ("mov_title") REFERENCES "Movies" ("title");

ALTER TABLE "Quotes" ADD FOREIGN KEY ("mov_yor") REFERENCES "Movies" ("year_of_release");

ALTER TABLE "Quotes" ADD FOREIGN KEY ("ac_name") REFERENCES "Actor" ("name");

ALTER TABLE "Quotes" ADD FOREIGN KEY ("ac_dob") REFERENCES "Actor" ("date_of_birth");

