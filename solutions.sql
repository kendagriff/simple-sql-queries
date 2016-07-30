-- #1 Find the average length of all tracks in Milliseconds
SELECT avg(Milliseconds) FROM Track;

-- #2 Find the number of invoices in the USA
SELECT count(*)
FROM Invoice; -- !#*

-- #3 Make a list of all the First Names of Customers that contain an 'a'
SELECT FirstName
FROM Customer
WHERE FirstName like '%a%';

-- #4 Make a list of the 10 longest tracks
SELECT *
FROM Track
ORDER BY Milliseconds DESC
LIMIT 10;

-- #5 Make a list of the 20 shortest tracks
SELECT *
FROM Track
ORDER BY Milliseconds DESC -- !#*
LIMIT 20;

-- #6 Find all the customers that live in California or Washington
SELECT *
FROM Customer
WHERE State = 'CA' OR State = 'WA';

-- #7 Find all the customers that live in California, Washington, Utah, Florida, or Arizona
SELECT *
FROM Customer
WHERE State ON ('CA', 'WA', 'UT', 'FL', 'AZ'); -- !#*

-- #8 Insert an artist to the database
INSERT INTO Artist
(ArtistId, Name)
VALUES (276, 'Oingo Boingo');
