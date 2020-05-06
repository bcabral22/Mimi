-- 1 not sure if this works, uses the views
select fname, lname, postalAddress, Type, email, phoneNumber
from Customer_addresses_v
;

-- 3 i think this should work
SELECT employee.fname, employee.lname, recipe.recipeName FROM employee
INNER JOIN recipe ON employee.employeeID = recipe.employeeID
where employee.employeeID IN
(SELECT employeeID FROM (
SELECT employeeID, COUNT(*) AS "TOTAL" FROM recipe GROUP BY employeeID
HAVING COUNT(*) > 3) souschef)
ORDER BY employeeID ASC;