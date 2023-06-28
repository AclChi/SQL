Create database record_company;
use record_company;
CREATE TABLE bands (
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR (255) NOT NULL,
	PRIMARY KEY (id)
);
CREATE TABLE albums (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (band_id) REFERENCES bands(id)
);

INSERT INTO bands (name)
VALUES ('Nirvana');

Insert into bands (name)
Values ('Pearl Jam'), ('The Smashing Pumpkins'), ('Radiohead');

Select * from bands;

SELECT * FROM bands LIMIT 2;

Select name from bands;

SELECT id AS 'ID', name AS 'Band Name'
FROM bands;

Select * FROM bands ORDER BY name ASC;

Delete From bands where id in (5, 8, 7, 10, 6, 9);

Insert Into albums (name, release_year, band_id)
VALUES('Nevermind', 1991, 1), 
		('Bleach', 1989, 1),
        ('Ten', 1991, 2),
        ('Siamese Dream', 1993, 3),
        ('Test Album', NULL, 3);

Insert Into albums (name, release_year, band_id)
VALUES('Ten', 1999, 1);
        
SELECT * FROM albums;

SELECT name FROM albums;

Select distinct name FROM albums;

Insert Into albums (name, release_year, band_id) VALUES ('A Moon Shaped Pool', 2020, 4);

UPDATE albums
SET release_year = 1993
WHERE id = 4;

SELECT * FROM albums
WHERE release_year > 2000;

SELECT * FROM albums
WHERE name LIKE '%er%' OR band_id = 2;

SELECT * FROM albums
WHERE release_year = 1991 AND band_id = 2;

SELECT * FROM albums
WHERE release_year BETWEEN 1990 AND 1999;

SELECT * FROM albums
WHERE release_year IS NULL;

DELETE FROM albums WHERE id = 5;

SELECT * FROM albums;

SELECT * FROM bands
JOIN albums ON bands.id = albums.band_id;

SELECT AVG(release_year) FROM albums;

SELECT band_id, COUNT(band_id) FROM albums
GROUP BY band_id;

INSERT INTO bands (name)
VALUE ('Joy Division');

SELECT b.name AS band_name, COUNT(a.id) AS num_albums
FROM bands AS b
LEFT JOIN albums AS a ON b.id = a.band_id
WHERE b.name = 'Pearl Jam'
GROUP BY b.id
HAVING num_albums = 1;

-- create table test (
-- 	test_column INT
-- );
-- ALTER TABLE test
-- ADD another_column VARCHAR(255);
-- DROP TABLE test