-- Churn rate
SELECT 
  (SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0)/COUNT(*) AS ChurnRate
FROM churn_data;

-- Avg tenure of churned customers
SELECT AVG(Tenure) AS AvgTenure_Churned
FROM churn_data
WHERE Churn='Yes';
