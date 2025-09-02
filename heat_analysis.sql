-- Create the table
CREATE TABLE heat_data (
  id INTEGER PRIMARY KEY,
  latitude REAL,
  longitude REAL,
  lst REAL,
  land_use TEXT,
  ndvi REAL
);

-- Insert simulated data
INSERT INTO heat_data (latitude, longitude, lst, land_use, ndvi) VALUES
(23.55, 87.32, 38.2, 'Industrial', 0.12),
(23.56, 87.33, 36.5, 'Residential', 0.18),
(23.57, 87.34, 34.1, 'Green Space', 0.65),
(23.58, 87.35, 39.0, 'Barren Land', 0.05),
(23.59, 87.36, 37.8, 'Industrial', 0.10),
(23.60, 87.37, 35.2, 'Residential', 0.22),
(23.61, 87.38, 33.0, 'Green Space', 0.70),
(23.62, 87.39, 40.1, 'Barren Land', 0.03),
(23.63, 87.40, 36.9, 'Residential', 0.20),
(23.64, 87.41, 32.5, 'Green Space', 0.68);

-- Query 1: Average temperature by land use
SELECT land_use, AVG(lst) AS avg_temp
FROM heat_data
GROUP BY land_use
ORDER BY avg_temp DESC;

-- Query 2: Hot zones with low vegetation
SELECT *
FROM heat_data
WHERE ndvi < 0.2 AND lst > 36;

-- Query 3: Top 5 hottest locations
SELECT *
FROM heat_data
ORDER BY lst DESC
LIMIT 5;
