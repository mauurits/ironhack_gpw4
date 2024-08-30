use flight;

# TOP 5 AIRLINES (DOMESTIC MARKET SHARE)
SELECT a.name AS airlines, COUNT(*) AS Num_of_flights FROM flight.flight AS f
JOIN flight.airlines AS a
ON f.OP_UNIQUE_CARRIER = a.iata
GROUP BY a.name
ORDER BY COUNT(*) DESC
LIMIT 5;

# TOP 5 CITY BY DEPARTURE FLIGHTS
SELECT c.city_name, COUNT(*) AS Num_of_flights FROM flight.flight AS f
JOIN flight.city AS c
ON f.ORIGIN_CITY_MARKET_ID = c.citymarketid
GROUP BY c.city_name
ORDER BY COUNT(*) DESC
LIMIT 5;

# TOP 5 CITY BY ARRIVAL FLIGHTS
SELECT c.city_name, COUNT(*) AS Num_of_arrival_flights FROM flight.flight AS f
JOIN flight.city AS c
ON f.DEST_CITY_MARKET_ID = c.citymarketid
GROUP BY c.city_name
ORDER BY COUNT(*) DESC
LIMIT 5;

-- Flight Cancelation analysis

-- Count of total cancelled flights
SELECT COUNT(*) AS count FROM flight.flight
WHERE CANCELLED = 1
ORDER BY count DESC;

-- Count of cancellations per airline
SELECT COUNT(CANCELLED) AS count FROM flight.flight
GROUP BY OP_CARRIER_FL_NUM
ORDER BY count DESC;

-- Count of cancellations per departure city
SELECT COUNT(CANCELLED) AS count FROM flight.flight
GROUP BY ORIGIN_CITY_MARKET_ID
ORDER BY count DESC;

-- Count of cancellations per arrival city
SELECT COUNT(CANCELLED) AS count FROM flight.flight
GROUP BY DEST_CITY_MARKET_ID
ORDER BY count DESC;