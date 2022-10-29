CREATE TABLE "author" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "user" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "edge" int
);

CREATE TABLE "post" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar,
  "description" varchar,
  "author_id" int,
  "category_id" int,
  "comment_id" int,
  "content" text
);

CREATE TABLE "category" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "comment" (
  "id" SERIAL PRIMARY KEY,
  "user_id" int,
  "comment" varchar
);

ALTER TABLE "post" ADD FOREIGN KEY ("author_id") REFERENCES "author" ("id");

ALTER TABLE "comment" ADD FOREIGN KEY ("user_id") REFERENCES "user" ("id");

ALTER TABLE "post" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("id");

ALTER TABLE "post" ADD FOREIGN KEY ("comment_id") REFERENCES "comment" ("id");

insert into author (name) values ('Fabian Gonzalez'), ('Ian Rosas');
insert into category (name) values ('Fundamentos de programacion'), ('React'), ('Backend');
insert into "user"  (name, email, "password", edge) values 
('Carlos Montenegro', 'montenegro@gmail.com', 'carlos1234', 28);
insert into "comment" (user_id, "comment") values (1, 'Excelente curso');
insert into post (title, description, author_id, category_id, comment_id, "content") 
values ('Java desde cero', 'En este blog aprenderas los conceptos basicos de JS', 2, 1, 1, 'Que es una variable, usos');