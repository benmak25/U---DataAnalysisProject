SELECT Year
FROM Economy_of_US
WHERE GDP_Growth > 0.05;

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
  ) AS subquery_with_averages;
