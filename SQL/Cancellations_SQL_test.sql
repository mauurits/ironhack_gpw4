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

