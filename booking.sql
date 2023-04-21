SELECT *
FROM Property
ORDER BY Address ASC;

UPDATE Property
SET Status = 'WITHDRAWN'
WHERE PropertyID = 7
  AND Status != 'SOLD';
  
  SELECT CASE
  WHEN Status = 'SOLD' THEN '406 Not Acceptable: Property is already sold'
  ELSE 'Property is not sold'
END AS 'Status'
FROM Property
WHERE PropertyID = 7