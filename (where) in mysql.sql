USE world;
SHOW TABLES;
SELECT * FROM country WHERE continent = 'Asia';
SELECT * FROM country WHERE indepyear = 1991;
SELECT * FROM country WHERE continent in ('Africa','Asia');
SELECT * FROM country WHERE indepyear in (1960,1991);
SELECT * FROM country WHERE indepyear not between 1960 and 1991;
