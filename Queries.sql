SELECT Year
FROM Economy_of_US
WHERE GDP_Growth > 0.05; --Selects Years with GDP > 5%

SELECT
  (
    SUM((GDP_PPP - avg_x) * (GDP_Nominal - avg_y)) -- Numerator: Sum of products of deviations
  ) / NULLIF(
    SQRT(
      SUM((GDP_PPP - avg_x) * (GDP_PPP- avg_x)) * SUM((GDP_Nominal - avg_y) * (GDP_Nominal - avg_y))
    ),
    0
  ) AS correlation_coefficient
FROM
  (
    SELECT
      t.*,
      AVG(GDP_PPP) OVER () AS avg_x,
      AVG(GDP_Nominal) OVER () AS avg_y
    FROM
      Economy_of_US t
  ) AS subquery_with_averages; --Calculates Correlation between GDP PPP and Nominal Metrics using the statistical formula (Tested in SQLite,so I could not use the CORR function)

SELECT GDP_Nominal, Year, AVG(GDP_Nominal) OVER (
ORDER by Year
rows BETWEEN 2 PRECEDING AND CURRENT ROW)
 AS moving_avg
 FROM Economy_of_US; -- 3 Year Moving Avergage for Nominal GDP

SELECT GDP_Nominal, Year, AVG(GDP_Nominal) OVER (
ORDER by Year
rows BETWEEN 4 PRECEDING AND CURRENT ROW)
 AS moving_avg
 FROM Economy_of_US; -- 5 Year Moving Avergage for Nominal GDP

SELECT GDP_PPP, Year, AVG(GDP_PPP) OVER (
ORDER by Year
rows BETWEEN 2 PRECEDING AND CURRENT ROW)
 AS moving_avg
 FROM Economy_of_US; -- 3 Year Moving Avergage for GDP PPP

SELECT GDP_PPP, Year, AVG(GDP_PPP) OVER (
ORDER by Year
rows BETWEEN 4 PRECEDING AND CURRENT ROW)
 AS moving_avg
 FROM Economy_of_US; -- 5 Year Moving Avergage for GDP PPP

SELECT Year, avg_growth
FROM(SELECT Year, GDP_Growth, AVG(GDP_Growth) over (
ORDER BY Year
ROWS BETWEEN 9 PRECEDING and CURRENT ROW
) AS avg_growth -- Calculates the average growth rate between current and previous 9 years
FROM Economy_of_US)
order by avg_growth DESC 
LIMIT 1; --Finds the decade with the ending year with the highest average growth rate
