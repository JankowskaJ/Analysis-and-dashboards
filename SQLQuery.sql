--We want to know how much customers do we have in each city.

SELECT City,COUNT(*) as Number_of_customer
FROM Customers
GROUP BY City
ORDER BY Number_of_customer DESC

--Please tag customers who did not buy anything this year as 'Inactive', rest should be 'Active'. 

SELECT c.FirstName, c.Surname, 
CASE 
	WHEN MAX(YEAR(o.Date)) = 2022 THEN 'Active'
	WHEN MAX(YEAR(o.Date)) < 2022 THEN 'Inactive'
END AS Activity
FROM Customers c
JOIN Orders o
ON c.CustomerId = o.CustomerId
GROUP BY YEAR(o.Date), c.FirstName, c.Surname
ORDER BY Activity

--Can you find a list of customers how only register on website and never did purchase?

SELECT c.FirstName, c.Surname, o.OrderId AS Purchase
FROM Customers c
LEFT JOIN Orders o
ON c.CustomerId = o.CustomerId
WHERE o.OrderId IS NULL

--We want to know average amount that the customer has paid in our store from the beginning of the year (monthly comparison)

SELECT MONTH(o.Date) AS Month, AVG(o.Quantity * p.Price) AS Avg_Sale
FROM Orders o
JOIN Products p
ON o.ProductId = p.ProductId
WHERE YEAR(o.Date) = 2022
GROUP BY MONTH(o.Date)

--We want to know the best selling products this year.

SELECT YEAR(o.Date) AS Year, p.Name, p.Size, SUM(o.Quantity) AS Total_Sale
FROM Orders o
JOIN Products p
ON o.ProductId = p.ProductId
WHERE YEAR(o.Date) = 2022
GROUP BY p.Name, p.Size, YEAR(o.Date)
ORDER BY YEAR(o.Date), Total_Sale DESC 

--Which employee prepared the most orders last year?

SELECT e.FirstName, e.Surname, COUNT(o.OrderId) AS Prepared_orders
FROM Employees e
JOIN Orders o
ON e.EmployeeId = o.EmployeeId
WHERE YEAR(o.Date) = 2021
GROUP BY e.FirstName, e.Surname
ORDER BY Prepared_orders DESC

--We want to compare average order amount and total amount by each city.

SELECT  c.City, AVG (o.Quantity * p.Price) AS Average_Sale, SUM(o.Quantity * p.Price) AS Total_Sale
FROM Customers c
JOIN Orders o 
ON c.CustomerId = o.CustomerId
JOIN Products p 
ON o.ProductId = p.ProductId
GROUP BY c.City
ORDER BY c.City
