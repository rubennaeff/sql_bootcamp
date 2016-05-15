----------------------------------------------------------------------------------
--
-- These are a non-complete set of asnwers to exercises on pgexercises.com
--
----------------------------------------------------------------------------------

-- https://pgexercises.com/questions/basic

-- https://pgexercises.com/questions/basic/classify.html
SELECT
  name,
  CASE WHEN monthlymaintenance > 100 THEN 'expensive' ELSE 'cheap' END AS cost
FROM cd.facilities

--
SELECT memid, surname, firstname, joindate
FROM cd.members
WHERE joindate >= '2012-09-01'

--
SELECT DISTINCT surname
FROM cd.members
ORDER BY 1
LIMIT 10

-- Redshift, I always do
SELECT TOP 10 DISTINCT surname
FROM cd.members
ORDER BY 1

-- alternatively,
SELECT surname
FROM cd.members
GROUP BY surname
ORDER BY 1
LIMIT 10

-- https://pgexercises.com/questions/basic/union.html
SELECT surname FROM cd.members
UNION
SELECT name FROM cd.facilities

--
SELECT max(joindate) AS latest
FROM cd.members

--
SELECT
  firstname,
  surname,
  joindate
FROM cd.members
WHERE joindate IN (
  SELECT max(joindate)
  FROM cd.members)

-- alternatively,
SELECT firstname, surname, joindate
FROM cd.members
ORDER BY joindate DESC
LIMIT 1

-- alternatively,
SELECT
  firstname,
  surname,
  joindate
FROM cd.members
JOIN (
  SELECT max(joindate) AS latest
  FROM cd.members) AS mem
ON joindate = latest

----------------------------------------------------------------------------------
-- https://pgexercises.com/questions/joins

-- https://pgexercises.com/questions/joins/simplejoin.html
SELECT starttime
FROM cd.bookings
JOIN cd.members
ON cd.bookings.memid = cd.members.memid
WHERE cd.members.firstname = 'David'
AND cd.members.surname = 'Farrell'

--
SELECT
  starttime AS start,
  name
FROM cd.bookings
JOIN cd.facilities
ON cd.bookings.facid = cd.facilities.facid
WHERE starttime >= '2012-09-21'
AND starttime < '2012-09-22'
AND name LIKE 'Tennis Court%'

--
SELECT mem1.firstname, mem1.surname
FROM cd.members AS mem1
JOIN cd.members AS mem2
ON mem1.memid = mem2.recommendedby
GROUP BY 1, 2
ORDER BY 2, 1

-- alternatively,
SELECT DISTINCT mem1.firstname, mem1.surname
FROM cd.members AS mem1
JOIN cd.members AS mem2
ON mem1.memid = mem2.recommendedby
ORDER BY 2, 1

--
SELECT DISTINCT
  mem1.firstname memfname,
  mem1.surname memsname,
  mem2.firstname AS recfname,
  mem2.surname AS recsname
FROM cd.members AS mem1
LEFT JOIN cd.members AS mem2
ON mem1.recommendedby = mem2.memid
ORDER BY 2, 1

--
SELECT DISTINCT
  CONCAT(firstname, ' ', surname) AS member,
  name AS facility
FROM cd.members mem
JOIN cd.bookings book
ON mem.memid = book.memid
JOIN cd.facilities fac
ON book.facid = fac.facid
WHERE fac.name LIKE 'Tennis Court%'
ORDER BY 1

-- https://pgexercises.com/questions/joins/threejoin2.html
SELECT
  CONCAT(firstname, ' ', surname) AS member,
  name AS facility,
  CASE WHEN mem.memid = 0 THEN slots * guestcost ELSE slots * membercost END AS cost
FROM cd.members mem
JOIN cd.bookings book
ON mem.memid = book.memid
JOIN cd.facilities fac
ON book.facid = fac.facid
WHERE book.starttime >= '2012-09-14'
AND book.starttime < '2012-09-15'
AND CASE WHEN mem.memid = 0 THEN slots * guestcost ELSE slots * membercost END > 30
ORDER BY cost DESC

-- alternatively, but with subquery
SELECT *
FROM (
  SELECT
    CONCAT(firstname, ' ', surname) AS member,
    name AS facility,
    CASE WHEN mem.memid = 0 THEN slots * guestcost ELSE slots * membercost END AS cost
  FROM cd.members mem
  JOIN cd.bookings book
  ON mem.memid = book.memid
  JOIN cd.facilities fac
  ON book.facid = fac.facid
  WHERE book.starttime >= '2012-09-14'
  AND book.starttime < '2012-09-15'
) data
WHERE cost > 30
ORDER BY cost DESC

-- LEFT HERE:
-- https://pgexercises.com/questions/joins/sub.html


SELECT DISTINCT
  firstname || ' ' || surname AS member,
  (SELECT firstname || ' ' || surname AS recommender
   FROM cd.members rec
   WHERE rec.memid = mem.recommendedby)
FROM cd.members mem
ORDER BY member

--
SELECT *
FROM (
  SELECT
    CONCAT(firstname, ' ', surname) AS member,
    name AS facility,
    CASE WHEN mem.memid = 0 THEN slots * guestcost ELSE slots * membercost END AS cost
  FROM cd.members mem
  JOIN cd.bookings book
  ON mem.memid = book.memid
  JOIN cd.facilities fac
  ON book.facid = fac.facid
  WHERE book.starttime >= '2012-09-14'
  AND book.starttime < '2012-09-15'
) data
WHERE cost > 30
ORDER BY cost DESC


----------------------------------------------------------------------------------
-- https://pgexercises.com/questions/aggregates

-- https://pgexercises.com/questions/aggregates/count.html
SELECT COUNT(*)
FROM cd.facilities

--
SELECT COUNT(*)
FROM cd.facilities
WHERE guestcost >= 10

-- not ok? same results
SELECT
  recommendedby,
  count (distinct memid)
FROM cd.members
GROUP BY 1
ORDER BY 1

--
SELECT
  fac.facid,
  SUM (slots) AS "Total Slots"
FROM cd.facilities fac
JOIN cd.bookings book
ON fac.facid = book.facid
GROUP BY 1
ORDER BY 1

--
SELECT
  fac.facid,
  SUM (slots) AS "Total Slots"
FROM cd.facilities fac
JOIN cd.bookings book
ON fac.facid = book.facid
WHERE book.starttime >= '2012-09-01'
AND book.starttime < '2012-10-01'
GROUP BY 1
ORDER BY 2

--
SELECT
  fac.facid,
  date_part ('month', book.starttime) as month,
  SUM (slots) AS "Total Slots"
FROM cd.facilities fac
JOIN cd.bookings book
ON fac.facid = book.facid
WHERE book.starttime >= '2012-01-01'
AND book.starttime < '2013-01-01'
GROUP BY 1, 2
ORDER BY 1, 2

--
SELECT
  count(distinct mem.memid)
FROM cd.members mem
INNER JOIN cd.bookings book
ON mem.memid = book.memid

--
SELECT *
FROM (
  SELECT
  fac.facid,
  SUM (slots) AS "Total Slots"
  FROM cd.facilities fac
  JOIN cd.bookings book
  ON fac.facid = book.facid
  GROUP BY 1
  ) data
WHERE "Total Slots" > 1000
ORDER BY 1

-- better,
SELECT
  fac.facid,
  SUM (slots) AS "Total Slots"
FROM cd.facilities fac
JOIN cd.bookings book
ON fac.facid = book.facid
GROUP BY 1
HAVING sum(slots) > 1000
ORDER BY 1

--
SELECT
  fac.name,
  SUM(slots * (
    CASE
    WHEN mem.memid = 0 THEN fac.guestcost
    ELSE fac.membercost END)) AS revenue
FROM cd.facilities fac
JOIN cd.bookings book
ON fac.facid = book.facid
JOIN cd.members mem
ON book.memid = mem.memid
GROUP BY 1
ORDER BY 2
