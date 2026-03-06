SELECT *
FROM airport_authority_operations_dataset;

-- 1. Total Flights
SELECT COUNT(*) AS Total_Flights
FROM airport_authority_operations_dataset;

-- 2. Average Arrival delay
SELECT AVG(Arrival_Delay_Minutes) AS Avg_Arrival_Delay
FROM airport_authority_operations_dataset;

-- 3. Average Departure Delay
SELECT AVG(Departure_Delay_Minutes) AS Avg_Departure_Delay
FROM airport_authority_operations_dataset;

-- 4. Airline Performance
SELECT Airline,
       AVG(Arrival_Delay_Minutes) as Avg_Arrival_Delay
FROM airport_authority_operations_dataset
GROUP BY Airline
ORDER BY Avg_Arrival_Delay DESC;

-- 5. MOST DELAYED FLIGHTS
SELECT TOP 5 *
FROM airport_authority_operations_dataset
ORDER BY Arrival_Delay_Minutes DESC;