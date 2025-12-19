--  country & continent where continent starts with 'N'
SELECT name, continent
FROM country
WHERE continent LIKE 'N%';

--  country name where continent has minimum 4 characters
SELECT name
FROM country
WHERE name LIKE '%p_';


--  name & continent where continent second letter is 'a'
--    and region second last letter is 'a'
SELECT name, continent
FROM country
WHERE continent LIKE '_a%'
AND region LIKE '%a_';

--  where region 3rd character is 'c' and ends with 'sia'
SELECT *
FROM country
WHERE region LIKE '__c%sia';

--  name & region where continent is North America or South America
SELECT name, region
FROM country
WHERE continent IN ('North America', 'South America');
