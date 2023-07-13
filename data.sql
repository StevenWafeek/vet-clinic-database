/* Populate database with sample data. */

INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg) VALUES
  (1, 'Agumon', '2020-02-03', 0, true, 10.23),
  (2, 'Gabumon', '2018-11-15', 2, true, 8),
  (3, 'Pikachu', '2021-01-07', 1, false, 15.04),
  (4, 'Devimon', '2017-05-12', 5, true, 11);

  INSERT INTO animals (id, name, date_of_birth, escape_attempts, neutered, weight_kg)
VALUES 
  (5, 'Charmander', '2020-02-08', 0, false, -11),
	(6, 'Plantmon', '2022-11-15', 2, true, -5.7),
	(7, 'Squirtle', '1993-04-02', 3, false, -12.13),
  (8, 'Angemon', '2005-06-12', 1, true, -45),
  (9, 'Boarmon', '2005-06-07', 7, true, 20.4),
  (10, 'Blossom', '1998-08-13', 3, true, 17);

INSERT INTO owners (full_name, age)
VALUES
('Sam Smith', 34),
('Jennifer Orwell', 19),
('Bob', 45),
('Melody Pond', 77),
('Dean Winchester', 14),
('Jodie Whittaker', 38);

INSERT INTO species (name)
VALUES
('Pokemon'),
('Digimon');

UPDATE animals SET species_id = (
  CASE
    WHEN name LIKE '%mon' THEN 2
    ELSE 1
  END
);

UPDATE animals SET owner_id = (
  CASE
    WHEN name = 'Agumon' THEN 1
    WHEN name IN ('Gabumon', 'Pikachu') THEN 2
    WHEN name IN ('Devimon', 'Plantmon') THEN 3
    WHEN name IN ('Charmander', 'Squirtle', 'Blossom') THEN 4
    WHEN name IN ('Angemon', 'Boarmon') THEN 5
  END
);

INSERT INTO vets (name, age, date_of_graduation)
VALUES ('William Tatcher', 45, '2000-04-23'),
       ('Maisy Smith', 26, '2019-01-17'),
       ('Stephanie Mendez', 64, '1981-05-04'),
       ('Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations (vet_id, species_id)
VALUES (1, 1),
       (3, 2),
       (3, 1),
       (4, 2);

INSERT INTO visits (vet_id, animal_id, visit_date)
VALUES
((SELECT id FROM vets WHERE name = 'William Tatcher'),
(SELECT id FROM animals WHERE name = 'Agumon'),
'2020-05-24'),
((SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
(SELECT id FROM animals WHERE name = 'Agumon'),
'2020-07-22'),
((SELECT id FROM vets WHERE name = 'Jack Harkness'),
(SELECT id FROM animals WHERE name = 'Gabumon'),
'2021-02-02'),
((SELECT id FROM vets WHERE name = 'Maisy Smith'),
(SELECT id FROM animals WHERE name = 'Pikachu'),
'2020-01-05'),
((SELECT id FROM vets WHERE name = 'Maisy Smith'),
(SELECT id FROM animals WHERE name = 'Pikachu'),
'2020-03-08'),
((SELECT id FROM vets WHERE name = 'Maisy Smith'),
(SELECT id FROM animals WHERE name = 'Pikachu'),
'2020-05-14'),
((SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
(SELECT id FROM animals WHERE name = 'Devimon'),
'2021-05-04'),
((SELECT id FROM vets WHERE name = 'Jack Harkness'),
(SELECT id FROM animals WHERE name = 'Charmander'),
'2021-02-24'),
((SELECT id FROM vets WHERE name = 'Maisy Smith'),
(SELECT id FROM animals WHERE name = 'Plantmon'),
'2019-12-21'),
((SELECT id FROM vets WHERE name = 'William Tatcher'),
(SELECT id FROM animals WHERE name = 'Plantmon'),
'2020-08-10'),
((SELECT id FROM vets WHERE name = 'Maisy Smith'),
(SELECT id FROM animals WHERE name = 'Plantmon'),
'2021-04-07'),
((SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
(SELECT id FROM animals WHERE name = 'Squirtle'),
'2019-09-29'),
((SELECT id FROM vets WHERE name = 'Jack Harkness'),
(SELECT id FROM animals WHERE name = 'Angemon'),
'2020-10-03'),
((SELECT id FROM vets WHERE name = 'Jack Harkness'),
(SELECT id FROM animals WHERE name = 'Angemon'),
'2020-11-04'),
((SELECT id FROM vets WHERE name = 'Maisy Smith'),
(SELECT id FROM animals WHERE name = 'Boarmon'),
'2019-01-24'),
((SELECT id FROM vets WHERE name = 'Maisy Smith'),
(SELECT id FROM animals WHERE name = 'Boarmon'),
'2019-05-15'),
((SELECT id FROM vets WHERE name = 'Maisy Smith'),
(SELECT id FROM animals WHERE name = 'Boarmon'),
'2020-02-27'),
((SELECT id FROM vets WHERE name = 'Maisy Smith'),
(SELECT id FROM animals WHERE name = 'Boarmon'),
'2020-08-03'),
((SELECT id FROM vets WHERE name = 'Stephanie Mendez'),
(SELECT id FROM animals WHERE name = 'Blossom'),
'2020-05-24'),
((SELECT id FROM vets WHERE name = 'William Tatcher'),
(SELECT id FROM animals WHERE name = 'Blossom'),
'2021-01-11');
 