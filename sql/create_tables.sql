-- Start by deleting any tables if the exist already
-- We want to be able to re-run this script as needed.
-- DROP tables in reverse order of creation 
-- DROP dependent tables (with foreign keys) first

DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS countrylanguage;
DROP TABLE IF EXISTS country;

-- Create the books table

CREATE TABLE city (
    name TEXT,
    countrycode TEXT PRIMARY KEY,
    district TEXT,
    population INTEGER
);

-- Create the countrylanguage table 

CREATE TABLE countrylanguage (
    countrycode TEXT PRIMARY KEY,
    flanguage TEXT,
    isofficial TEXT,
    percentage REAL
);

-- Create the country table 


CREATE TABLE country (
    code TEXT PRIMARY KEY,
    name TEXT,
    continent TEXT,
    region TEXT,
    surface_area REAL,
    indep_year INTEGER,
    population INTEGER,
    life_expectancy REAL,
    gnp REAL,
    gnp_old REAL,
    local_name TEXT,
    government_form TEXT,
    head_of_state TEXT,
    capital INTEGER,
    code2 TEXT
);