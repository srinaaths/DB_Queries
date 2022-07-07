CREATE TABLE "movie" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "release_year" timestamp,
  "rating" float,
  "director_id" int,
  "country_of_origin" int
);

CREATE TABLE "director" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "phone_num" varchar,
  "gender" varchar
);

CREATE TABLE "actor" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "phone_num" varchar,
  "gender" varchar
);

CREATE TABLE "movie_actor" (
  "actor_id" int,
  "movie_id" int,
  "role" varchar,
  PRIMARY KEY ("actor_id", "movie_id")
);

CREATE TABLE "genre" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "rating" (
  "id" SERIAL PRIMARY KEY,
  "movie_id" int,
  "rating" float,
  "review" varchar
);

ALTER TABLE "movie_actor" ADD FOREIGN KEY ("actor_id") REFERENCES "actor" ("id");

ALTER TABLE "movie_actor" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("id");

CREATE TABLE "movie_genre" (
  "movie_id" int NOT NULL,
  "genre_id" int NOT NULL,
  PRIMARY KEY ("movie_id", "genre_id")
);

ALTER TABLE "movie_genre" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("id");

ALTER TABLE "movie_genre" ADD FOREIGN KEY ("genre_id") REFERENCES "genre" ("id");


ALTER TABLE "rating" ADD FOREIGN KEY ("movie_id") REFERENCES "movie" ("id");

ALTER TABLE "movie"
  DROP COLUMN rating;
