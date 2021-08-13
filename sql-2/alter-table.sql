ALTER TABLE animals
ADD location VARCHAR(50);

INSERT INTO animals (name, age, type, location)
VALUES('Tucker', 15, 'Horse', 'Africa');

INSERT INTO animals (name, age, type, location)
VALUES('Vinnie', 5, 'Monkey', 'India');

INSERT INTO animals (name, age, type, location)
VALUES('Wilma', 10, 'Alian', 'Mars');

ALTER TABLE animals
RENAME COLUMN type TO species;

ALTER TABLE animals
ALTER COLUMN species TYPE VARCHAR(50);