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

insert into author (name) values ('Andres Moreno'), ('Cristian Daez');

insert into category (name) values ('Base de datos');

insert into "user"  (name, email, "password", edge) values 
('Felipe Socarras', 'felipe@gmail.com', 'felipe1234', 48), 
('Diro Moreno', 'dairo@gmail.com', 'dairo1234', 23), ('Yeiman Cordero', 'yeiman@gmail.com', 'teiman1234', 25);

insert into "comment" (user_id, "comment") values 
(2, 'Me encanta la programacion'), (3, 'Me gustaria conocer mas de Js avanzado'), 
(4, 'Como puedo acceder al curso de Backend?');

insert into post (title, description, author_id, category_id, comment_id, "content") 
values ('Java desde cero', 'En este blog aprenderas los conceptos basicos de JS', 2, 1, 2, 'Segunda semana de clases');

insert into post (title, description, author_id, category_id, comment_id, "content") 
values ('React', 'En este blog aprenderas los conceptos React', 3, 2, 3, 'Iniciamos con toda React para frontend'), 
('Backend', 'Principios basicos de Backend', 1, 3, 4, 'Node - Node.js express');