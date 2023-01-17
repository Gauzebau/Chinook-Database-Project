# Query 1

SELECT  count (e.EmployeeId) Numb_Employees, i.BillingCountry, sum(i.Total) Total_amount
FROM Employee e
JOIN Customer c
ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
ON c.CustomerId = i.CustomerId
GROUP BY i.BillingCountry
ORDER By count (e.EmployeeId) DESC
LIMIT 10;
