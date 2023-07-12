/* Database schema to keep the structure of entire database. */


CREATE TABLE owners (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  full_name VARCHAR(255),
  age INTEGER
);

CREATE TABLE species (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(255)
);

CREATE TABLE animals (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(55),
  date_of_birth DATE,
  escape_attempts INTEGER,
  neutered BOOLEAN,
  weight_kg DECIMAL(5,2),
  species_id INTEGER,
  owner_id INTEGER,
  FOREIGN KEY (species_id) REFERENCES species(id),
  FOREIGN KEY (owner_id) REFERENCES owners(id)
);