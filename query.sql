--0.
show TABLE;SELECT *
FROM pg_catalog.pg_tables
WHERE schemaname != 'pg_catalog' AND 
    schemaname != 'information_schema';
--1.0
Create table Movie(
	movie_id INT PRIMARY KEY,
	title VARCHAR(255),
	plot VARCHAR(255),
  poster VARCHAR(255),
  release_date TIMESTAMP ,
  imdb_id VARCHAR(255)
);

-- 1.1
Create table Users(
	user_id INT PRIMARY KEY,
	name VARCHAR(255),
	join_date TIMESTAMP ,
	authenticity float(1),
	email VARCHAR(255),
  pic VARCHAR(255)
);

--1.2
Create table people(
	people_id INT PRIMARY KEY,
	name VARCHAR(255),
	image VARCHAR(255),
    profession VARCHAR(255)
);

-- 1.3
Create table casting(
-- 	people_id INT PRIMARY KEY,
	role VARCHAR(255),
	people_id INT,
    movie_id INT
);
--2.
INSERT INTO Movie(movie_id,title,plot, poster, release_date, imdb_id)
VALUES (44729,"the movie","The Straw Hats visit a recreational island, run by Baron Omatsu"
-- , the former captain of a pirate crew, who were all killed years ago. Being the only survivor, he then started hating all close-knit groups of pirates and wishing to separate them. He and his henchmen seed distrust among the Straw Hats and capture them one by one, leaving only Luffy to free his crew from the Baron's hold.
,"/8rgWeWMG48GakXCempvyBBhgyl3.jpg","2005-03-05T00:00:00.000Z","tt1018764"  );
-- 4.
SELECT * FROM information_schema.columns WHERE table_schema = 'crrpbpoo' AND table_name = 'Movie'

-- 5.
ALTER TABLE casting ALTER COLUMN people_id TYPE INT