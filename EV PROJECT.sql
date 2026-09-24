CREATE TABLE India_EV_Dataset (
    County VARCHAR(100),
    City VARCHAR(100),
    State VARCHAR(100),
    Postal_Code INT,
    Model_Year INT,
    Make VARCHAR(100),
    Model VARCHAR(150),
    Electric_Vehicle_Type VARCHAR(100),
    CAFV_Eligibility VARCHAR(255),
    Electric_Range INT,
    Base_MSRP INT,
    DOL_Vehicle_ID BIGINT PRIMARY KEY,
    Vehicle_Location VARCHAR(255),
    Electric_Utility VARCHAR(150)
);


--01. Total EV Records

SELECT COUNT(*) AS total_ev_records
FROM India_EV_Dataset;

--02. EV Records by State

SELECT State,
       COUNT(*) AS ev_records
FROM India_EV_Dataset
GROUP BY State
ORDER BY ev_records DESC;

--03. Top 10 Cities by EV Records

SELECT City,
       State,
       COUNT(*) AS ev_records
FROM India_EV_Dataset
GROUP BY City, State
ORDER BY ev_records DESC
LIMIT 10;

--04. Top 15 EV Manufacturers

SELECT  Make,
       COUNT(*) AS ev_records
FROM India_EV_Dataset
GROUP BY Make
ORDER BY ev_records DESC
LIMIT 15;

--05. Top 20 EV Models

SELECT Make,
       Model,
       COUNT(*) AS ev_records
FROM India_EV_Dataset
GROUP BY Make, Model
ORDER BY ev_records DESC
LIMIT 20;

06. EV Type Distribution

SELECT Electric_Vehicle_Type,
       COUNT(*) AS ev_records,
       CAST(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER () AS DECIMAL(6,2)) AS percentage_of_records
FROM India_EV_Dataset
GROUP BY Electric_Vehicle_Type
ORDER BY ev_records DESC;

--07. CAFV Eligibility Distribution

SELECT
    CAFV_Eligibility,
    COUNT(*) AS ev_records,
    ROUND(
        COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (),
        2
    ) AS percentage_of_records
FROM India_EV_Dataset
GROUP BY CAFV_Eligibility
ORDER BY ev_records DESC;

--08. Average Electric Range by Vehicle Type

SELECT Electric_Vehicle_Type,
       CAST(AVG(CAST(Electric_Range AS DECIMAL(18,2))) AS DECIMAL(18,2)) AS avg_range_km,
       MAX(Electric_Range) AS max_range_km,
       MIN(Electric_Range) AS min_range_km
FROM India_EV_Dataset
GROUP BY Electric_Vehicle_Type
ORDER BY avg_range_km DESC;

--09. Top 15 Models by Electric Range

SELECT Make,
       Model,
       Electric_Range AS range_km
FROM India_EV_Dataset
WHERE Electric_Range IS NOT NULL
ORDER BY Electric_Range DESC
LIMIT 15;

-- 10. Average Base MSRP by Manufacturer

SELECT
    make,
    COUNT(*) AS ev_records,
    ROUND(AVG(base_msrp)::NUMERIC, 2) AS avg_msrp,
    '$' || TO_CHAR(
        ROUND(AVG(base_msrp)::NUMERIC, 2),
        'FM999,999,990.00'
    ) AS avg_msrp_display
FROM india_ev_dataset
WHERE base_msrp > 0
GROUP BY make
ORDER BY avg_msrp DESC;

--11. Top 15 Most Expensive EV Records

SELECT
    make,
    model,
    model_year,
    base_msrp AS msrp_usd,
    '$' || TO_CHAR(base_msrp, 'FM999,999,990') AS msrp_display
FROM india_ev_dataset
WHERE base_msrp > 0
ORDER BY base_msrp DESC
LIMIT 15;

--12. Average MSRP by EV Type

SELECT
    electric_vehicle_type,
    ROUND(AVG(base_msrp)::NUMERIC, 2) AS avg_msrp_usd,
    '$' || TO_CHAR(
        ROUND(AVG(base_msrp)::NUMERIC, 2),
        'FM999,999,990.00'
    ) AS avg_msrp_display
FROM india_ev_dataset
WHERE base_msrp > 0
GROUP BY electric_vehicle_type
ORDER BY avg_msrp_usd DESC;

--13. EV Records by Model Year

SELECT
    model_year,
    COUNT(*) AS ev_records
FROM india_ev_dataset
GROUP BY model_year
ORDER BY model_year;

--14. State and Model-Year Trend

SELECT
    state,
    model_year,
    COUNT(*) AS ev_records
FROM india_ev_dataset
GROUP BY state, model_year
ORDER BY state, model_year;

--15. Top 15 Manufacturers by Average Range

SELECT
    make,
    COUNT(*) AS ev_records,
    ROUND(AVG(electric_range)::NUMERIC, 2) AS avg_range
FROM india_ev_dataset
WHERE electric_range IS NOT NULL
GROUP BY make
HAVING COUNT(*) >= 5
ORDER BY avg_range DESC
LIMIT 15;

--16. Long-Range EVs Above 400 km

SELECT
    make,
    model,
    electric_range AS range_km,
    base_msrp AS msrp_usd,
    '$' || TO_CHAR(base_msrp, 'FM999,999,990') AS msrp_display
FROM india_ev_dataset
WHERE electric_range > 400
ORDER BY electric_range DESC;

--17. Affordable EVs Under $20,000

SELECT
    make,
    model,
    electric_range AS range_km,
    base_msrp AS msrp_usd,
    '$' || TO_CHAR(base_msrp, 'FM999,999,990') AS msrp_display
FROM india_ev_dataset
WHERE base_msrp > 0
  AND base_msrp < 20000
ORDER BY base_msrp, electric_range DESC
LIMIT 20;

--18. High-Range, Lower-MSRP EVs

SELECT
    make,
    model,
    electric_range AS range_km,
    base_msrp AS msrp_usd,
    '$' || TO_CHAR(base_msrp, 'FM999,999,990') AS msrp_display
FROM india_ev_dataset
WHERE electric_range >= 300
  AND base_msrp > 0
  AND base_msrp <= 30000
ORDER BY electric_range DESC, base_msrp
LIMIT 20;

--19. Top EV Make in Each State

WITH ranked_makes AS (
    SELECT
        state,
        make,
        COUNT(*) AS ev_records,
        ROW_NUMBER() OVER (
            PARTITION BY state
            ORDER BY COUNT(*) DESC, make
        ) AS rn
    FROM india_ev_dataset
    GROUP BY state, make
)
SELECT
    state,
    make,
    ev_records
FROM ranked_makes
WHERE rn = 1
ORDER BY state;

--20. Top Model per Manufacturer

WITH ranked_models AS (
    SELECT
        make,
        model,
        COUNT(*) AS ev_records,
        ROW_NUMBER() OVER (
            PARTITION BY make
            ORDER BY COUNT(*) DESC, model
        ) AS rn
    FROM india_ev_dataset
    GROUP BY make, model
)
SELECT
    make,
    model,
    ev_records
FROM ranked_models
WHERE rn = 1
ORDER BY ev_records DESC;

--21. Average Range by State

SELECT
    state,
    COUNT(*) AS ev_records,
    ROUND(AVG(electric_range)::NUMERIC, 2) AS avg_range_km
FROM india_ev_dataset
WHERE electric_range IS NOT NULL
GROUP BY state
HAVING COUNT(*) >= 5
ORDER BY avg_range_km DESC;

--22. Average MSRP by State

SELECT
    state,
    COUNT(*) AS ev_records,
    ROUND(AVG(base_msrp)::NUMERIC, 2) AS avg_msrp_usd,
    '$' || TO_CHAR(
        ROUND(AVG(base_msrp)::NUMERIC, 2),
        'FM999,999,990.00'
    ) AS avg_msrp_display
FROM india_ev_dataset
WHERE base_msrp > 0
GROUP BY state
HAVING COUNT(*) >= 5
ORDER BY avg_msrp_usd DESC;

--23. Electric Utility Coverage

SELECT
    electric_utility,
    COUNT(*) AS ev_records,
    COUNT(DISTINCT state) AS states_covered
FROM india_ev_dataset
WHERE electric_utility IS NOT NULL
  AND BTRIM(electric_utility) <> ''
GROUP BY electric_utility
ORDER BY ev_records DESC;

--24. Top 20 Postal Codes by EV Records

SELECT
    postal_code,
    city,
    state,
    COUNT(*) AS ev_records
FROM india_ev_dataset
GROUP BY postal_code, city, state
ORDER BY ev_records DESC
LIMIT 20;

--25. Potential Duplicate Vehicle IDs

SELECT
    dol_vehicle_id,
    COUNT(*) AS record_count
FROM india_ev_dataset
GROUP BY dol_vehicle_id
HAVING COUNT(*) > 1
ORDER BY record_count DESC;

--26. Missing-Value Profile

SELECT
    COUNT(*) FILTER (
        WHERE county IS NULL OR BTRIM(county) = ''
    ) AS missing_county,
    COUNT(*) FILTER (
        WHERE city IS NULL OR BTRIM(city) = ''
    ) AS missing_city,
    COUNT(*) FILTER (
        WHERE state IS NULL OR BTRIM(state) = ''
    ) AS missing_state,
    COUNT(*) FILTER (
        WHERE make IS NULL OR BTRIM(make) = ''
    ) AS missing_make,
    COUNT(*) FILTER (
        WHERE model IS NULL OR BTRIM(model) = ''
    ) AS missing_model,
    COUNT(*) FILTER (
        WHERE electric_range IS NULL
    ) AS missing_range,
    COUNT(*) FILTER (
        WHERE base_msrp IS NULL
    ) AS missing_msrp,
    COUNT(*) FILTER (
        WHERE electric_utility IS NULL OR BTRIM(electric_utility) = ''
    ) AS missing_utility
FROM india_ev_dataset;

--27. Invalid or Zero MSRP Records

SELECT
    COUNT(*) AS invalid_or_zero_msrp_records
FROM india_ev_dataset
WHERE base_msrp IS NULL
   OR base_msrp <= 0;

--28. Suspicious Electric Range Values

SELECT
    COUNT(*) AS suspicious_range_records
FROM india_ev_dataset
WHERE electric_range IS NULL
   OR electric_range < 0;

--29. Manufacturer Model Diversity

SELECT
    make,
    COUNT(DISTINCT model) AS distinct_models,
    COUNT(*) AS ev_records
FROM india_ev_dataset
GROUP BY make
ORDER BY distinct_models DESC, ev_records DESC
LIMIT 20;

--30. State-Level EV Market Profile

SELECT
state,
COUNT(*) AS ev_records,
COUNT(DISTINCT make) AS distinct_makes,
COUNT(DISTINCT model) AS distinct_models,
ROUND(AVG(electric_range)::NUMERIC, 2) AS avg_range_km,
ROUND(AVG(NULLIF(base_msrp, 0))::NUMERIC, 2) AS avg_msrp_usd,
'$' || TO_CHAR(
ROUND(AVG(NULLIF(base_msrp, 0))::NUMERIC, 2),
'FM999,999,990.00'
) AS avg_msrp_display
FROM india_ev_dataset
GROUP BY state
ORDER BY ev_records DESC;
