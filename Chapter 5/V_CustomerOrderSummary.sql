CREATE OR REPLACE VIEW V_CustomerOrderSummary AS
SELECT State,
  AVG(TotalDue) AS Avg_Due,
  MIN(TotalDue) AS Min_Due,
  MAX(TotalDue) AS Max_Due,
  SUM(TotalDue) AS Total_Sales
FROM Customer
JOIN Orders on Orders.CustomerID=Customer.CustomerID
GROUP BY State;