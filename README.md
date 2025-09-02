# 🌡️ Urban Heat Mapping and Resource Allocation – Durgapur

## 📌 Overview
This project explores urban heat islands in Durgapur, India, using spatial data and SQL analysis. By examining land surface temperature (LST), land use types, and vegetation index (NDVI), the goal is to identify high-risk zones and propose cooling interventions such as afforestation and reflective surfaces.

## 🎯 Objective
- Analyze spatial data to detect heat patterns across different land use zones
- Use SQL to organize, filter, and interpret the dataset
- Recommend resource allocation strategies to mitigate urban heat stress

## 🛠️ Tools Used
- **SQL** – Queries written and tested using [DB Fiddle](https://www.db-fiddle.com/)
- **Spreadsheet (Excel/Google Sheets)** – For initial data simulation
- **SQLite/MySQL** – Compatible with all queries provided

## 🗂️ Dataset Description
Simulated dataset includes:
- `latitude`, `longitude`: Location coordinates in Durgapur
- `lst`: Land Surface Temperature (°C)
- `land_use`: Type of land (residential, industrial, green_space, barren_land)
- `ndvi`: Vegetation index (0 = no vegetation, 1 = dense greenery)

### 📊 Sample Data

| Latitude | Longitude | LST (°C) | Land Use     | NDVI  |
|----------|-----------|----------|--------------|-------|
| 23.55    | 87.32     | 38.2     | Industrial   | 0.12  |
| 23.56    | 87.33     | 36.5     | Residential  | 0.18  |
| 23.57    | 87.34     | 34.1     | Green Space  | 0.65  |
| 23.58    | 87.35     | 39.0     | Barren Land  | 0.05  |
| 23.59    | 87.36     | 37.8     | Industrial   | 0.10  |
| 23.60    | 87.37     | 35.2     | Residential  | 0.22  |
| 23.61    | 87.38     | 33.0     | Green Space  | 0.70  |
| 23.62    | 87.39     | 40.1     | Barren Land  | 0.03  |
| 23.63    | 87.40     | 36.9     | Residential  | 0.20  |
| 23.64    | 87.41     | 32.5     | Green Space  | 0.68  |

## 🧮 SQL Analysis

### 1. 🔥 Average Temperature by Land Use
```sql
SELECT land_use, AVG(lst) AS avg_temp
FROM heat_data
GROUP BY land_use
ORDER BY avg_temp DESC;
2. 🌱 Hot Zones with Low Vegetation
SELECT *
FROM heat_data
WHERE ndvi < 0.2 AND lst > 36;
3. 📍 Top 5 Hottest Locations
SELECT *
FROM heat_data
ORDER BY lst DESC
LIMIT 5;
🌿 Recommendations
Afforestation in industrial and barren zones

Cool roofing in residential areas with moderate NDVI

Preservation and expansion of green spaces

